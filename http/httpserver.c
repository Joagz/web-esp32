#include "esp_log.h"
#include "lwip/inet.h"
#include "lwip/sockets.h"
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <strings.h>

#include "httpserver.h"

static struct mapping mappings[AVAILABLE_MAPPINGS];

static int mapping_index = 0;
static char mappings_is_init = 0;

void check(int exp, char *msg){
    if(exp == -1) perror(msg);
}

void init_mappings(){
    bzero(&mappings, sizeof(mappings));
    mappings_is_init = 1;
}

void setMapping(struct mapping m)
{
    if(mappings_is_init == 0) init_mappings();

    mappings[mapping_index] = m;
    mapping_index++;
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
        struct sockaddr_in client_address;
        bzero(&client_address, sizeof(client_address));

        socklen_t len = sizeof(client_address);
        int client = accept(sockfd, (struct sockaddr*)&client_address, &len);

        if(client == -1) {
            perror("client");
            continue;
        }

        char BUF[1024];
        bzero(&BUF, 1024);

        check(read(client, BUF, 1024), "read");

        FILE * fp;
        fp = fopen("/storage/index.html", "r");

        if(fp == NULL) {
            perror("fopen");
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
        // vTaskDelay(500 / portTICK_PERIOD_MS);
    }

}

