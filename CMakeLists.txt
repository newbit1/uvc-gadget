cmake_minimum_required(VERSION 3.0)
project(uvc-gadget)
set(CMAKE_BUILD_TYPE Release)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Wno-unused-parameter")

include_directories(${CMAKE_BINARY_DIR})

add_executable(uvc-gadget uvc-gadget.c)
target_link_libraries(uvc-gadget ${CMAKE_BINARY_DIR})
install(TARGETS uvc-gadget DESTINATION bin)
