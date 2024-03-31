#include "esp_err.h"
#include "esp_log.h"
#include "esp_spiffs.h"

static const char* TAG = "FileSystem";

esp_err_t load_fs(){
    esp_vfs_spiffs_conf_t config = {
        .base_path = "/storage",
        .partition_label = NULL,
        .max_files = 5,
        .format_if_mount_failed = true // use carefully
    };

    esp_err_t result = esp_vfs_spiffs_register(&config);

    if(result != ESP_OK){
        ESP_LOGE(TAG, "Failed to initialize SPIFFS (%s)", esp_err_to_name(result));
        return ESP_ERR_NO_MEM;
    }

    size_t total = 0, used = 0;
    result = esp_spiffs_info(config.partition_label, &total, &used);

    if(result != ESP_OK) {
        ESP_LOGE(TAG, "Failed to get partition info (%s)", esp_err_to_name(result));
        return ESP_ERR_NO_MEM;
    } else {
        ESP_LOGI(TAG, "Partition size: total %zu, used %zu", total, used);
    }

    return ESP_OK;

}
