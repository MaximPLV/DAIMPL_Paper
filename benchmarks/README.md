All four projects were built using the following CMake command template:

```sh
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_MAKE_PROGRAM=C:/path/to/ninja -G Ninja -S <source_directory> -B <build_directory>
```

The optimization level has been defined in the respective CMakeLists.txt

Benchmark 1:
```sh
-O0
```

Benchmark 2:
```sh
-O0
```

Benchmark 3:
```sh
-O3
```

Benchmark 4:
```sh
-O3
```
