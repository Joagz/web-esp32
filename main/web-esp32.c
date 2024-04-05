#include <stdint.h>
#include <webesp32.h>

#define WIFI_SSID "Flia Premet"
#define WIFI_PASSWORD "eljoaqui"

void app_main(void)
{

    wifi_config_t wifi_config = {
        .sta = {
            .ssid = WIFI_SSID,
            .password = WIFI_PASSWORD,
            .threshold.authmode = WIFI_AUTH_WPA2_PSK,
            .pmf_cfg = {
                .capable = true,
                .required = false
            }

        }
    };

    struct webespconfig config = {
        .wifi_config=wifi_config
    };

   startWebESPApp(config);

}

