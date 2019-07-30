
# One simple Hello-World project

```
.
├── CMakeLists.txt
├── hello_cmake.cpp
└── README.md

0 directories, 3 files

```

## How to build it 

- In-Place Build (Strongly Discouraged)

  ```
  cmake .
  make
  ./HELLO
  ```
- Out-of-source way

  ```
  mkdir build && cd build && cmake ..
  make
  ./HELLO
  ```
