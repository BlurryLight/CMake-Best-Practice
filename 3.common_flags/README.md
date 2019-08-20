# FLAGS

This dir shows how to pass compiler-flag or  definitions to the targets. `CMAKE_CXX_FLAGS` is a simple way to do that, but it also has serious side effects. The more perferable way is to employ `target_compile_options` and `target_compile_definitions`,as the names say, to do that.
