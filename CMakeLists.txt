cmake_minimum_required(VERSION 3.20)
project(Babilono LANGUAGES CXX)

set(glad_DIR "./vcpkg_installed/x64-linux/share/glad")
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_TOOLCHAIN_FILE "./vcpkg/scripts/buildsystems/vcpkg.cmake")

find_package(SDL2 CONFIG REQUIRED)
find_package(glad CONFIG REQUIRED)
find_package(glm CONFIG REQUIRED)

add_executable(Babilono src/main.cpp)

target_link_libraries(Babilono PRIVATE 
  glad::glad
  glm::glm 
  SDL2::SDL2
  SDL2::SDL2main
)

if (CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(Babilono PRIVATE -Wall -Wextra -Wpedantic)
endif()
