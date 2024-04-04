#ifndef AVAILABLE_MAPPINGS
    #define AVAILABLE_MAPPINGS 10
#endif

struct mapping {
    char * url;
    char * file;
    void (*handler)(void);
};

void start_server();
