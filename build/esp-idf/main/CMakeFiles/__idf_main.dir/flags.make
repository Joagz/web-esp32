# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# compile C with /home/joagz/.espressif/tools/xtensa-esp-elf/esp-13.2.0_20240305/xtensa-esp-elf/bin/xtensa-esp32-elf-gcc
C_DEFINES = -DESP_PLATFORM -DIDF_VER=\"v5.3-dev-2815-gbe06a6f5ff\" -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DSOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE -DSOC_XTAL_FREQ_MHZ=CONFIG_XTAL_FREQ -DUNITY_INCLUDE_CONFIG_H -D_GLIBCXX_HAVE_POSIX_SEMAPHORE -D_GLIBCXX_USE_POSIX_SEMAPHORE -D_GNU_SOURCE -D_POSIX_READER_WRITER_LOCKS

C_INCLUDES = -I/home/joagz/esp-idf/projects/web-esp32/build/config -I/home/joagz/esp-idf/projects/web-esp32/main/../webesp/wifi -I/home/joagz/esp-idf/projects/web-esp32/main/../webesp/filesys -I/home/joagz/esp-idf/projects/web-esp32/main/../webesp/http -I/home/joagz/esp-idf/projects/web-esp32/main/../webesp -I/home/joagz/esp-idf/components/newlib/platform_include -I/home/joagz/esp-idf/components/freertos/config/include -I/home/joagz/esp-idf/components/freertos/config/include/freertos -I/home/joagz/esp-idf/components/freertos/config/xtensa/include -I/home/joagz/esp-idf/components/freertos/FreeRTOS-Kernel/include -I/home/joagz/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include -I/home/joagz/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos -I/home/joagz/esp-idf/components/freertos/esp_additions/include -I/home/joagz/esp-idf/components/esp_hw_support/include -I/home/joagz/esp-idf/components/esp_hw_support/include/soc -I/home/joagz/esp-idf/components/esp_hw_support/include/soc/esp32 -I/home/joagz/esp-idf/components/esp_hw_support/dma/include -I/home/joagz/esp-idf/components/esp_hw_support/port/esp32/. -I/home/joagz/esp-idf/components/esp_hw_support/port/esp32/include -I/home/joagz/esp-idf/components/heap/include -I/home/joagz/esp-idf/components/log/include -I/home/joagz/esp-idf/components/soc/include -I/home/joagz/esp-idf/components/soc/esp32 -I/home/joagz/esp-idf/components/soc/esp32/include -I/home/joagz/esp-idf/components/hal/platform_port/include -I/home/joagz/esp-idf/components/hal/esp32/include -I/home/joagz/esp-idf/components/hal/include -I/home/joagz/esp-idf/components/esp_rom/include -I/home/joagz/esp-idf/components/esp_rom/include/esp32 -I/home/joagz/esp-idf/components/esp_rom/esp32 -I/home/joagz/esp-idf/components/esp_common/include -I/home/joagz/esp-idf/components/esp_system/include -I/home/joagz/esp-idf/components/esp_system/port/soc -I/home/joagz/esp-idf/components/esp_system/port/include/private -I/home/joagz/esp-idf/components/xtensa/esp32/include -I/home/joagz/esp-idf/components/xtensa/include -I/home/joagz/esp-idf/components/xtensa/deprecated_include -I/home/joagz/esp-idf/components/lwip/include -I/home/joagz/esp-idf/components/lwip/include/apps -I/home/joagz/esp-idf/components/lwip/include/apps/sntp -I/home/joagz/esp-idf/components/lwip/lwip/src/include -I/home/joagz/esp-idf/components/lwip/port/include -I/home/joagz/esp-idf/components/lwip/port/freertos/include -I/home/joagz/esp-idf/components/lwip/port/esp32xx/include -I/home/joagz/esp-idf/components/lwip/port/esp32xx/include/arch -I/home/joagz/esp-idf/components/lwip/port/esp32xx/include/sys -I/home/joagz/esp-idf/components/esp_driver_gpio/include -I/home/joagz/esp-idf/components/esp_pm/include -I/home/joagz/esp-idf/components/mbedtls/port/include -I/home/joagz/esp-idf/components/mbedtls/mbedtls/include -I/home/joagz/esp-idf/components/mbedtls/mbedtls/library -I/home/joagz/esp-idf/components/mbedtls/esp_crt_bundle/include -I/home/joagz/esp-idf/components/mbedtls/mbedtls/3rdparty/everest/include -I/home/joagz/esp-idf/components/mbedtls/mbedtls/3rdparty/p256-m -I/home/joagz/esp-idf/components/mbedtls/mbedtls/3rdparty/p256-m/p256-m -I/home/joagz/esp-idf/components/esp_app_format/include -I/home/joagz/esp-idf/components/esp_bootloader_format/include -I/home/joagz/esp-idf/components/app_update/include -I/home/joagz/esp-idf/components/bootloader_support/include -I/home/joagz/esp-idf/components/bootloader_support/bootloader_flash/include -I/home/joagz/esp-idf/components/esp_partition/include -I/home/joagz/esp-idf/components/efuse/include -I/home/joagz/esp-idf/components/efuse/esp32/include -I/home/joagz/esp-idf/components/esp_mm/include -I/home/joagz/esp-idf/components/spi_flash/include -I/home/joagz/esp-idf/components/pthread/include -I/home/joagz/esp-idf/components/esp_timer/include -I/home/joagz/esp-idf/components/esp_driver_gptimer/include -I/home/joagz/esp-idf/components/esp_ringbuf/include -I/home/joagz/esp-idf/components/esp_driver_uart/include -I/home/joagz/esp-idf/components/vfs/include -I/home/joagz/esp-idf/components/app_trace/include -I/home/joagz/esp-idf/components/esp_event/include -I/home/joagz/esp-idf/components/nvs_flash/include -I/home/joagz/esp-idf/components/esp_driver_pcnt/include -I/home/joagz/esp-idf/components/esp_driver_spi/include -I/home/joagz/esp-idf/components/esp_driver_mcpwm/include -I/home/joagz/esp-idf/components/esp_driver_ana_cmpr/include -I/home/joagz/esp-idf/components/esp_driver_i2s/include -I/home/joagz/esp-idf/components/sdmmc/include -I/home/joagz/esp-idf/components/esp_driver_sdmmc/include -I/home/joagz/esp-idf/components/esp_driver_sdspi/include -I/home/joagz/esp-idf/components/esp_driver_sdio/include -I/home/joagz/esp-idf/components/esp_driver_dac/include -I/home/joagz/esp-idf/components/esp_driver_rmt/include -I/home/joagz/esp-idf/components/esp_driver_tsens/include -I/home/joagz/esp-idf/components/esp_driver_sdm/include -I/home/joagz/esp-idf/components/esp_driver_i2c/include -I/home/joagz/esp-idf/components/esp_driver_ledc/include -I/home/joagz/esp-idf/components/esp_driver_parlio/include -I/home/joagz/esp-idf/components/esp_driver_usb_serial_jtag/include -I/home/joagz/esp-idf/components/driver/deprecated -I/home/joagz/esp-idf/components/driver/i2c/include -I/home/joagz/esp-idf/components/driver/touch_sensor/include -I/home/joagz/esp-idf/components/driver/twai/include -I/home/joagz/esp-idf/components/driver/touch_sensor/esp32/include -I/home/joagz/esp-idf/components/esp_phy/include -I/home/joagz/esp-idf/components/esp_phy/esp32/include -I/home/joagz/esp-idf/components/esp_vfs_console/include -I/home/joagz/esp-idf/components/esp_netif/include -I/home/joagz/esp-idf/components/wpa_supplicant/include -I/home/joagz/esp-idf/components/wpa_supplicant/port/include -I/home/joagz/esp-idf/components/wpa_supplicant/esp_supplicant/include -I/home/joagz/esp-idf/components/esp_coex/include -I/home/joagz/esp-idf/components/esp_wifi/include -I/home/joagz/esp-idf/components/esp_wifi/wifi_apps/include -I/home/joagz/esp-idf/components/esp_wifi/include/local -I/home/joagz/esp-idf/components/unity/include -I/home/joagz/esp-idf/components/unity/unity/src -I/home/joagz/esp-idf/components/cmock/CMock/src -I/home/joagz/esp-idf/components/console -I/home/joagz/esp-idf/components/http_parser -I/home/joagz/esp-idf/components/esp-tls -I/home/joagz/esp-idf/components/esp-tls/esp-tls-crypto -I/home/joagz/esp-idf/components/esp_adc/include -I/home/joagz/esp-idf/components/esp_adc/interface -I/home/joagz/esp-idf/components/esp_adc/esp32/include -I/home/joagz/esp-idf/components/esp_adc/deprecated/include -I/home/joagz/esp-idf/components/esp_driver_cam/include -I/home/joagz/esp-idf/components/esp_driver_cam/interface -I/home/joagz/esp-idf/components/esp_driver_jpeg/include -I/home/joagz/esp-idf/components/esp_eth/include -I/home/joagz/esp-idf/components/esp_gdbstub/include -I/home/joagz/esp-idf/components/esp_hid/include -I/home/joagz/esp-idf/components/tcp_transport/include -I/home/joagz/esp-idf/components/esp_http_client/include -I/home/joagz/esp-idf/components/esp_http_server/include -I/home/joagz/esp-idf/components/esp_https_ota/include -I/home/joagz/esp-idf/components/esp_https_server/include -I/home/joagz/esp-idf/components/esp_psram/include -I/home/joagz/esp-idf/components/esp_lcd/include -I/home/joagz/esp-idf/components/esp_lcd/interface -I/home/joagz/esp-idf/components/protobuf-c/protobuf-c -I/home/joagz/esp-idf/components/protocomm/include/common -I/home/joagz/esp-idf/components/protocomm/include/security -I/home/joagz/esp-idf/components/protocomm/include/transports -I/home/joagz/esp-idf/components/protocomm/include/crypto/srp6a -I/home/joagz/esp-idf/components/protocomm/proto-c -I/home/joagz/esp-idf/components/esp_local_ctrl/include -I/home/joagz/esp-idf/components/espcoredump/include -I/home/joagz/esp-idf/components/espcoredump/include/port/xtensa -I/home/joagz/esp-idf/components/wear_levelling/include -I/home/joagz/esp-idf/components/fatfs/diskio -I/home/joagz/esp-idf/components/fatfs/src -I/home/joagz/esp-idf/components/fatfs/vfs -I/home/joagz/esp-idf/components/idf_test/include -I/home/joagz/esp-idf/components/idf_test/include/esp32 -I/home/joagz/esp-idf/components/ieee802154/include -I/home/joagz/esp-idf/components/json/cJSON -I/home/joagz/esp-idf/components/mqtt/esp-mqtt/include -I/home/joagz/esp-idf/components/nvs_sec_provider/include -I/home/joagz/esp-idf/components/perfmon/include -I/home/joagz/esp-idf/components/spiffs/include -I/home/joagz/esp-idf/components/wifi_provisioning/include

C_FLAGS = -mlongcalls -Wno-frame-address  -fno-builtin-memcpy -fno-builtin-memset -fno-builtin-bzero -fno-builtin-stpcpy -fno-builtin-strncpy -fdiagnostics-color=always -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=unused-but-set-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -Wno-enum-conversion -gdwarf-4 -ggdb -Og -fno-shrink-wrap -fmacro-prefix-map=/home/joagz/esp-idf/projects/web-esp32=. -fmacro-prefix-map=/home/joagz/esp-idf=/IDF -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -std=gnu17 -Wno-old-style-declaration
