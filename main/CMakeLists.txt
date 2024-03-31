idf_component_register(SRCS "web-esp32.c"
                       INCLUDE_DIRS ""
                       REQUIRES)

spiffs_create_partition_image(storage ../partition FLASH_IN_PROJECT)


# Include files from http directory
set(HTTP_SOURCES
    "../http/contextholder.c"
    "../http/filter.c"
    "../http/http-commons.c"
    "../http/server.c"
)

set(HTTP_INCLUDES
    "../http"
)

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
target_sources(${COMPONENT_LIB} PRIVATE ${HTTP_SOURCES} ${WIFI_SOURCES} ${FILESYS_SOURCES})

target_include_directories(${COMPONENT_LIB} PRIVATE ${HTTP_INCLUDES} ${WIFI_INCLUDES} ${FILESYS_INCLUDES} )

