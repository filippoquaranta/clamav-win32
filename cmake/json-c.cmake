file(GLOB json-c_srcs ${3RDPARTY}/json-c/*.c)
add_library(json-c STATIC ${json-c_srcs})
target_include_directories(json-c PRIVATE ${3RDPARTY})
target_compile_definitions(json-c PRIVATE HAVE_CONFIG_H)

install(FILES ${3RDPARTY}/json-c/COPYING DESTINATION ${CMAKE_INSTALL_PREFIX}/copyright RENAME COPYING.json-c)
