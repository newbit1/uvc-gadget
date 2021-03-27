cmake_minimum_required(VERSION 3.0)
project(yavta)
set(CMAKE_BUILD_TYPE Release)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O2 -W -Wall -Wextra -Wno-unused-parameter -Werror ")

include_directories(include)

find_library(LIBRT rt)

add_executable(yavta yavta.c)

if(LIBRT)
target_link_libraries(yavta ${LIBRT})
endif()
install(TARGETS yavta DESTINATION bin)

