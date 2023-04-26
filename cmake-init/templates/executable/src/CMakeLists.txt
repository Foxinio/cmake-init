add_executable({= name =}_exe main.cpp)
add_executable({= name =}::exe ALIAS {= name =}_exe)

set_property(TARGET {= name =}_exe PROPERTY OUTPUT_NAME {= name =})

target_compile_features({= name =}_exe PRIVATE cxx_std_{= std =})

target_link_libraries({= name =}_exe PRIVATE {= name =}_lib)

