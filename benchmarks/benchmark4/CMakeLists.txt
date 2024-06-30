cmake_minimum_required(VERSION 3.29)
project(benchmarks_paper)

set(CMAKE_CXX_STANDARD 20)

# Add Google Benchmark
include(FetchContent)
FetchContent_Declare(
        googletest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG release-1.12.1
)

FetchContent_Declare(
        googlebenchmark
        GIT_REPOSITORY https://github.com/google/benchmark.git
        GIT_TAG v1.6.1
)

FetchContent_MakeAvailable(googletest googlebenchmark)

# Add the benchmark target
add_executable(benchmarks_paper main.cpp)
target_compile_options(benchmarks_paper PRIVATE -O3)
target_link_libraries(benchmarks_paper benchmark::benchmark)
