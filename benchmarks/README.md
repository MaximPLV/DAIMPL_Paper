All four projects were built using the following CMake command template:

```sh
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_MAKE_PROGRAM=C:/path/to/ninja -G Ninja -S <source_directory> -B <build_directory>
```