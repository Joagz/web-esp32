#include "esp_log.h"
#include "lwip/inet.h"
#include "lwip/sockets.h"
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <strings.h>

#include "httpserver.h"

#define STORAGE_URL_STR "/storage"
#define RESOURCES_URL_STR "_resources/"

static int STORAGE_URL_SIZE = 0;
static int RESOURCES_URL_SIZE = 0;
static struct mapping mappings[AVAILABLE_MAPPINGS];

static int mapping_length = 0;
static char mappings_is_init = 0;

void check(int exp, char *msg){
    if(exp == -1) perror(msg);
}

void init_mappings_and_folders(){
    STORAGE_URL_SIZE = strlen(STORAGE_URL_STR);
    RESOURCES_URL_SIZE = strlen(RESOURCES_URL_STR);
    bzero(&mappings, sizeof(mappings));
    mappings_is_init = 1;
}

void setMapping(struct mapping m)
{
    if(mappings_is_init == 0) init_mappings_and_folders();

    mappings[mapping_length] = m;
    mapping_length++;
}

void start_server() {

    int sockfd, status = 0;
    struct sockaddr_in server_address;

    bzero(&server_address, sizeof(server_address));

    sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    check(sockfd, "socket");

    server_address.sin_addr.s_addr = htonl(INADDR_ANY);
    server_address.sin_port = htons(80);
    server_address.sin_family = AF_INET;

    status = bind(sockfd, (struct sockaddr*)&server_address, sizeof(server_address));
    check(status, "bind");

    status = listen(sockfd, 5);
    check(status, "listen");

    while(1) {

        int k=0, j=0, _mapping_loc=-1;
        struct sockaddr_in client_address;
        bzero(&client_address, sizeof(client_address));
        socklen_t len = sizeof(client_address);
        int client = accept(sockfd, (struct sockaddr*)&client_address, &len);

        printf("client connected \n");

        if(client == -1) {
            perror("client");
            continue;
        }

        char BUF[1024];
        bzero(&BUF, 1024);

        check(read(client, BUF, 1024), "read");

        printf("%s\n", BUF);

        char method[8];
        char url[64];

        bzero(&method, 8);
        bzero(&url, 64);

        while(BUF[j] != ' ' && k < 8) {
            method[k] = BUF[j];
            j++;k++;
        }; // handle type of req

        k=0;
        j++;
        while(BUF[j] != ' ' && k < 64) {
            url[k] = BUF[j];
            j++; k++;
        }; // handle req url

        printf("Method: %s\tUrl: %s\tmapping_length: %d\n", method, url, mapping_length);

        k=0;
        for(int i = 0; i < mapping_length; i++)
        {
            printf("Looking for mappings...\n");
            if(strcmp(mappings[i].url, url) == 0 && strcmp(mappings[i].method, method) == 0)
            {
                printf("Mapping found!\n");
                _mapping_loc = i;
                break;
            }
        }


        if(_mapping_loc == -1) {
            printf("Mapping not found!\n");
            char file_src[64 + RESOURCES_URL_SIZE];
            bzero(&file_src, sizeof(file_src));

            strcpy(file_src, STORAGE_URL_STR);
            strcat(file_src, url);

            printf("FILE: %s\n", file_src);

            FILE * fp;
            fp = fopen(file_src, "r");

            if(fp == NULL) {
                perror("fopen");
                check(write(client, "HTTP/1.1 404 NOT FOUND\r\n\r\n", 26), "write");
                close(client);
                continue;
            }

            fseek(fp, 0, SEEK_END);
            long size = ftell(fp);
            fseek(fp, 0, SEEK_SET);

            bzero(&BUF, 1024);
            check(fread(&BUF, 1, size, fp), "fread");
            check(write(client, BUF, size), "write");

            fclose(fp);
            close(client);
            continue;
        } // no handler for method, could return 404

        printf("Found mapping in %d\n", _mapping_loc);

        void (*fn)(void) = mappings[_mapping_loc].handler;

        char file_src[64 + STORAGE_URL_SIZE];
        bzero(&file_src, sizeof(file_src));

        strcpy(file_src, STORAGE_URL_STR);
        strcat(file_src, mappings[_mapping_loc].file);

        printf("FILE: %s\n", file_src);

        FILE * fp;
        fp = fopen(file_src, "r");

        if(fp == NULL) {
            perror("fopen");
            check(write(client, "HTTP/1.1 404 NOT FOUND\r\n\r\n", 26), "write");
            close(client);
            continue;
        }

        fseek(fp, 0, SEEK_END);
        long size = ftell(fp);
        fseek(fp, 0, SEEK_SET);

        if(fn != 0x00)
            fn();

        bzero(&BUF, 1024);
        check(fread(&BUF, 1, size, fp), "fread");
        check(write(client, BUF, size), "write");

        fclose(fp);
        close(client);
        // vTaskDelay(500 / portTICK_PERIOD_MS);
    }

}


