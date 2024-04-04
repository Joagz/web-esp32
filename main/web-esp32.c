#include "esp_err.h"
#include "esp_wifi_types_generic.h"

#include <httpserver.h>
#include <strings.h>
#include <unistd.h>
#include <wificlient.h>
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

void app_main(void)
{
    esp_err_t result = load_fs();
    if(result != ESP_OK) return;

    connect_wifi(wifi_config);

    start_server();
}


