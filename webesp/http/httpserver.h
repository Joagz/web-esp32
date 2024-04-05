#ifndef AVAILABLE_MAPPINGS
    #define AVAILABLE_MAPPINGS 10
#endif

struct mapping {
    char * url;
    char * file;
    char * method;
    void (*handler)(void);
};


void setMapping(struct mapping m);
void start_server();
