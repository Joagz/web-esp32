#include "esp_err.h"
#include "esp_log.h"
#include "esp_wifi_types_generic.h"
#include "esp_spiffs.h"
#include "portmacro.h"


#include <stdio.h>
#include <wificlient.h>
#include <server.h>
#include <contextholder.h>
#include <load_fs.h>

wifi_config_t wifi_config = {
    .sta = {
        .ssid = "Flia Premet",
        .password = "eljoaqui",
        .threshold.authmode = WIFI_AUTH_WPA2_PSK,
        .pmf_cfg = {
            .capable = true,
            .required = false
        }

    }
};

void handleMain()
{
    char * tName = pcTaskGetName(xTaskGetCurrentTaskHandle());

    ESP_LOGI(tName, "Hello from HandleMain!!!!");
}

void app_main(void)
{
    esp_err_t result = load_fs();
    if(result != ESP_OK) return;

    connect_wifi(wifi_config);
    int server = run_http_server();

    setMapping("/", &handleMain, "GET", "index.html");

    while(1)
    {
        handleClient(server);
    }
}
