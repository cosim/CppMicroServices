
find_program(CTEST_COVERAGE_COMMAND NAMES gcov)
find_program(CTEST_MEMORYCHECK_COMMAND NAMES valgrind)
find_program(CTEST_GIT_COMMAND NAMES git)

set(CTEST_SITE "travis-ci")
set(CTEST_DASHBOARD_ROOT "/tmp")
#set(CTEST_COMPILER "gcc-4.5")
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
set(CTEST_BUILD_FLAGS "-j2")
set(CTEST_BUILD_CONFIGURATION $ENV{BUILD_TYPE})

set(US_TEST_SHARED 1)
set(US_TEST_STATIC 1)

set(US_SOURCE_DIR "~/builds/saschazelzer/CppMicroServices")

include(${US_SOURCE_DIR}/CMake/usCTestScript.cmake)
