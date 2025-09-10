set(CMAKE_C_COMPILER /usr/bin/clang)
set(CMAKE_CXX_COMPILER /usr/bin/clang++)

# Use mold linker
set(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=mold")
set(CMAKE_MODULE_LINKER_FLAGS "-fuse-ld=mold")
set(CMAKE_SHARED_LINKER_FLAGS "-fuse-ld=mold")
set(CMAKE_JOB_POOLS "link_pool=2")
set(CMAKE_JOB_POOL_LINK "link_pool")

# Taken from FuzzTestFlagSetup.cmake
set(CMAKE_CXX_FLAGS_INIT "-g -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -UNDEBUG -fsanitize=address -fsanitize-coverage=inline-8bit-counters -fsanitize-coverage=trace-cmp -fsanitize=address -DADDRESS_SANITIZER ")
set(CMAKE_C_FLAGS_INIT "-g -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -UNDEBUG -fsanitize=address -fsanitize-coverage=inline-8bit-counters -fsanitize-coverage=trace-cmp -fsanitize=address -DADDRESS_SANITIZER ")

set(CMAKE_EXE_LINKER_FLAGS_INIT  "-fsanitize=address ")

set(CMAKE_C_FLAGS_RELEASE "")
set(CMAKE_CXX_FLAGS_RELEASE "")
set(CMAKE_C_FLAGS_RELEASE_INIT "")
set(CMAKE_CXX_FLAGS_RELEASE_INIT "")

set(CMAKE_C_FLAGS_RELWITHDEBINFO "")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "")
set(CMAKE_C_FLAGS_RELWITHDEBINFO_INIT "")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT "")

set(CMAKE_C_FLAGS_MINSIZEREL "")
set(CMAKE_CXX_FLAGS_MINSIZEREL "")
set(CMAKE_C_FLAGS_MINSIZEREL_INIT "")
set(CMAKE_CXX_FLAGS_MINSIZEREL_INIT "")

set(CMAKE_C_FLAGS_DEBUG "")
set(CMAKE_CXX_FLAGS_DEBUG "")
set(CMAKE_C_FLAGS_DEBUG_INIT "")
set(CMAKE_CXX_FLAGS_DEBUG_INIT "")
