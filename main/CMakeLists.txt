idf_component_register(SRCS "web-esp32.c"
                       INCLUDE_DIRS ""
                       REQUIRES)

spiffs_create_partition_image(storage ../resources FLASH_IN_PROJECT)


# Include files from wifi directory
set(WIFI_SOURCES
    "../webesp/wifi/wificlient.c"
)
set(WIFI_INCLUDES
    "../webesp/wifi"
)

set(FILESYS_SOURCES
    "../webesp/filesys/load_fs.c"
)

set(FILESYS_INCLUDES
    "../webesp/filesys"
)

set(HTTP_SOURCES
    "../webesp/http/httpserver.c"
)

set(HTTP_INCLUDES
    "../webesp/http"
)

set(WEBESP32_SOURCES
    "../webesp/webesp32.c"
)

set(WEBESP32_INCLUDES
    "../webesp"
)

target_sources(${COMPONENT_LIB} PRIVATE ${WIFI_SOURCES} ${FILESYS_SOURCES} ${HTTP_SOURCES} ${WEBESP32_SOURCES})

target_include_directories(${COMPONENT_LIB} PRIVATE ${WIFI_INCLUDES} ${FILESYS_INCLUDES} ${HTTP_INCLUDES}
    ${WEBESP32_INCLUDES})

