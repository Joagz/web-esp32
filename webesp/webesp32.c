#include "webesp32.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "esp_err.h"
#include "esp_log.h"
#include "esp_system.h"

#include <httpserver.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include <unistd.h>
#include <wificlient.h>
#include <load_fs.h>


#ifndef HTTP_SERVER_STACK_SIZE
    #define HTTP_SERVER_STACK_SIZE 10000
#endif /* ifndef MACRO */

#define HTTP_SERVER_TAG "Esp32HttpServer"

void handleHome(){
    printf("Hi from home!\n");
}

void createServerTask( void )
{
    TaskHandle_t httpserver_handle;

    int temp = xTaskCreate(
            start_server,
            HTTP_SERVER_TAG,
            HTTP_SERVER_STACK_SIZE,
            NULL,       /* Task input parameter */
            0,          /* Priority of the task */
            &httpserver_handle);


    if(temp){
        ESP_LOGI(HTTP_SERVER_TAG, "Running server in port 80");
    } else {
        ESP_LOGE(HTTP_SERVER_TAG, "Could not run server");
        esp_restart();
    }



}

void startWebESPApp(struct webespconfig config)
{

    esp_err_t result = load_fs();
    if(result != ESP_OK) return;

    connect_wifi(config.wifi_config);

    struct mapping home = {
        .url="/", .file="/index.html", .method="GET", .handler=&handleHome
    };

    setMapping(home);

    createServerTask();
}


