#include "http-commons.h"
#include "server.h"
#include "contextholder.h"
#include "filter.h"

#include "lwip/sockets.h"
#include "lwip/inet.h"
#include <string.h>
#include <unistd.h>

#define HTTP_DEF_PORT 80
void handleClient(int sock);
void err_n_die(int exp, char * msg);

int run_http_server()
{
    int server_socket;
    struct sockaddr_in servaddr;

    server_socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    err_n_die(server_socket, "Socket");

    memset(&servaddr, 0, sizeof(servaddr));

    servaddr.sin_port = htons(HTTP_DEF_PORT);
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    int opt = 1;

    err_n_die(setsockopt(server_socket, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt)), "Could not set SO_REUSEADDR");

    err_n_die(bind(server_socket, (struct sockaddr*) &servaddr, sizeof(servaddr)),
            "Could not bind socket in server");

    err_n_die(listen(server_socket, BACKLOG), "Could not listen for connections in server");

    return server_socket;

}

void handleClient(int sock) {
        struct sockaddr_in client_addr;
        socklen_t len = sizeof(client_addr);

        int client = accept(sock, (struct sockaddr*) &client_addr, &len);

        memset(&client_addr, 0, len);

        char buffer[MAX_REQUEST_SIZE];
        if( read(client, buffer, MAX_REQUEST_SIZE) == EOF ) {
            shutdown(client, SHUT_RDWR);
            return;
        };

        struct http_req * req = filterHttpRequest(buffer);
        int handlerId = filterHandler(req);

        struct handler_list * handlerList = getHandlersList();
        struct handler hndlr = (*handlerList).handlers[handlerId];
        void (* fn)(void) = hndlr.fn;

        fn();

        FILE * fp = find_page(hndlr.file);
        char * bytes = read_page_bytes(fp);

        char * response = generateHttpResponse(hndlr.file, bytes);

        free(req);

        write(client, response, strlen(response));

        printf("Disconnecting client\n");

        free(response);
        shutdown(client, SHUT_RDWR);
        close(client);
}

void err_n_die(int exp, char * msg)
{
    if(exp == -1 || exp == EXIT_FAILURE)
    {
        perror(msg);
        printf("Exiting program...\n");
        exit(exp);
    }
}

