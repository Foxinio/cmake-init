add_library({= name =}_lib OBJECT)

set(INCLUDE_DIR
    "$<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include/{= name =}>")

target_include_directories(
    {= name =}_lib ${warning_guard}
    PUBLIC
	"$<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>"
)


set(INCLUDE_FILES
        ${INCLUDE_DIR}/lib.hpp
)

target_sources({= name =}_lib
    PUBLIC
        ${INCLUDE_FILES}
    PRIVATE
	lib.cpp
)

target_compile_features({= name =}_lib PUBLIC cxx_std_{= std =}){% if pm %}

find_package(fmt REQUIRED)
target_link_libraries({= name =}_lib PRIVATE fmt::fmt){% end %}

