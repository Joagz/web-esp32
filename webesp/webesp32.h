#include "esp_wifi_types_generic.h"

struct webespconfig {
    wifi_config_t wifi_config;
};

void startWebESPApp(struct webespconfig config);

