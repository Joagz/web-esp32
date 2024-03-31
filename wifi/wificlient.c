#include "wificlient.h"

#include <stdint.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"
#include "esp_system.h"
#include "esp_wifi.h"
#include "esp_event.h"
#include "esp_log.h"
#include "nvs_flash.h"

/** DEFINES **/
#define WIFI_SUCCESS 1 << 0
#define WIFI_FAILURE 1 << 1
#define TCP_SUCCESS 1 << 0
#define TCP_FAILURE 1 << 1
#define MAX_FAILURES 10


/** GLOBALS **/

// event group containing status info
static EventGroupHandle_t wifi_event_group;

// retries track
static int s_retry_num = 0;

// task tag
static const char *TAG = "WIFI";

/** FUNCTIONS **/

// handle wifi event
static void wifi_event_handler(void * arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    if(event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_START)
    {
        ESP_LOGI(TAG, "Connecting to AP...");
        esp_wifi_connect();

        // then ip_event_handler gets called
    } else if (event_base == WIFI_EVENT && event_id == WIFI_EVENT_STA_DISCONNECTED) {
        if(s_retry_num < MAX_FAILURES)
        {
            ESP_LOGI(TAG, "Reconnecting to AP...");
            esp_wifi_connect();
            s_retry_num++;
        } else {
            xEventGroupSetBits(wifi_event_group, WIFI_FAILURE);
        }
    }
}

// event handler for ip (invoked after esp_wifi_connect's success)
static void ip_event_handler(void * arg, esp_event_base_t event_base, int32_t event_id, void* event_data)

{
    if(event_base == IP_EVENT && event_id == IP_EVENT_STA_GOT_IP)
    {
        // Parse event data
        ip_event_got_ip_t* event = (ip_event_got_ip_t*) event_data;

        ESP_LOGI(TAG, "STA IP: " IPSTR, IP2STR(&event->ip_info.ip));
        s_retry_num = 0;
        xEventGroupSetBits(wifi_event_group, WIFI_SUCCESS);

    }
}



esp_err_t connect_wifi(wifi_config_t wifi_config)
{
	esp_err_t status = WIFI_FAILURE;

	//initialize storage
    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
      ESP_ERROR_CHECK(nvs_flash_erase());
      ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);

    /** INIT ESP NETWORK INTERFACE **/
    ESP_ERROR_CHECK(esp_netif_init());

    /** INIT DEFAULT ESP EVENT LOOP**/
    ESP_ERROR_CHECK(esp_event_loop_create_default());

    /** CREATE WIFI STATION IN THE WIFI DRIVER **/
    esp_netif_create_default_wifi_sta();

    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();

    /** APPLY DEFAULT CONFIG TO WIFI **/
    ESP_ERROR_CHECK(esp_wifi_init(&cfg));

    /** REGISTERING EVENT LOOPS**/

    wifi_event_group = xEventGroupCreate();

    esp_event_handler_instance_t wifi_event_handler_instance;

    ESP_ERROR_CHECK(esp_event_handler_instance_register(
                WIFI_EVENT,
                ESP_EVENT_ANY_ID,
                &wifi_event_handler,
                NULL,
                &wifi_event_handler_instance));

    esp_event_handler_instance_t ip_event_handler_instance;

    ESP_ERROR_CHECK(esp_event_handler_instance_register(
                IP_EVENT,
                IP_EVENT_STA_GOT_IP,
                &ip_event_handler,
                NULL,
                &ip_event_handler_instance));


    // Set wifi to STA
    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));

    ESP_ERROR_CHECK(esp_wifi_set_config(WIFI_IF_STA, &wifi_config));

    ESP_ERROR_CHECK(esp_wifi_start());

    ESP_LOGI(TAG, "STA initialization complete");

    EventBits_t bits = xEventGroupWaitBits(wifi_event_group,
            WIFI_SUCCESS | WIFI_FAILURE,
            pdFALSE,
            pdFALSE,
            portMAX_DELAY);

    if (bits & WIFI_SUCCESS) {
        ESP_LOGI(TAG, "Connected to ap");
        status = WIFI_SUCCESS;
    } else if (bits & WIFI_FAILURE) {
        ESP_LOGI(TAG, "Failed to connect to ap");
        status = WIFI_FAILURE;
    } else {
        ESP_LOGE(TAG, "UNEXPECTED EVENT");
        status = WIFI_FAILURE;
    }

    ESP_ERROR_CHECK(esp_event_handler_instance_unregister(
                IP_EVENT, IP_EVENT_STA_GOT_IP, &ip_event_handler_instance));

    ESP_ERROR_CHECK(esp_event_handler_instance_unregister(
                WIFI_EVENT, ESP_EVENT_ANY_ID, &wifi_event_handler_instance));

    vEventGroupDelete(wifi_event_group);

    return status;
}


