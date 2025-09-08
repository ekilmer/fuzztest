vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO google/re2
    REF ${VERSION}
    SHA512 3776383355ccfdec85e0cdfb3ce980c6ecb3c336d603dd34c0a547c7c06a6243947a13cb352372335edac12d4f28cf1b7a51d034f5b34db3e46cbcac5e3f7479
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DRE2_TEST=OFF
        -DRE2_BENCHMARK=OFF
        -DRE2_BUILD_TESTING=OFF
)

vcpkg_cmake_install()
# Copy all header files from re2/ to include/re2/
file(GLOB HEADER_FILES "${SOURCE_PATH}/re2/*.h")
foreach(HEADER_FILE IN LISTS HEADER_FILES)
    file(COPY "${HEADER_FILE}" DESTINATION "${CURRENT_PACKAGES_DIR}/include/re2")
endforeach()

file(GLOB HEADER_FILES "${SOURCE_PATH}/util/*.h")
file(MAKE_DIRECTORY "${CURRENT_PACKAGES_DIR}/include/util")
foreach(HEADER_FILE IN LISTS HEADER_FILES)
    file(COPY "${HEADER_FILE}" DESTINATION "${CURRENT_PACKAGES_DIR}/include/util")
endforeach()

vcpkg_copy_pdbs()
vcpkg_cmake_config_fixup(CONFIG_PATH "lib/cmake/${PORT}")
vcpkg_fixup_pkgconfig()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
