# Introduce third party libraries

This dir shows the basic structure to import an exsited **CMAKE-MODULE** library. The library wanted must provides an
'FindXXX.cmake` to enable CMake acquires the necessary information about where to find it. It's highly recommonded to
release your own library in this modern way, because it is more friendly for your users.
