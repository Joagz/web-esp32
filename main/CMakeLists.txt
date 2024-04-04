idf_component_register(SRCS "web-esp32.c"
                       INCLUDE_DIRS ""
                       REQUIRES)

spiffs_create_partition_image(storage ../partition FLASH_IN_PROJECT)


# Include files from wifi directory
set(WIFI_SOURCES
    "../wifi/wificlient.c"
)
set(WIFI_INCLUDES
    "../wifi"
)

set(FILESYS_SOURCES
    "../filesys/load_fs.c"
)

set(FILESYS_INCLUDES
    "../filesys"
)

set(HTTP_SOURCES
    "../http/httpserver.c"
)

set(HTTP_INCLUDES
    "../http"
)


target_sources(${COMPONENT_LIB} PRIVATE ${WIFI_SOURCES} ${FILESYS_SOURCES} ${HTTP_SOURCES})

target_include_directories(${COMPONENT_LIB} PRIVATE ${WIFI_INCLUDES} ${FILESYS_INCLUDES} ${HTTP_INCLUDES} )

