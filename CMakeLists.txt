cmake_minimum_required(VERSION 3.0.2)
project(hungarian_algorithm_lib)

find_package(catkin)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES hungarian_algorithm_lib
)

###########
## Build ##
###########

include_directories(
  include
)

add_library(hungarian_algorithm_lib src/Hungarian.cpp)
target_compile_options(hungarian_algorithm_lib PUBLIC -std=c++11 -O3 -Wall)

#############
## Install ##
#############

install(TARGETS hungarian_algorithm_lib
ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
RUNTIME DESTINATION ${CATKIN_GLOBAL_BIN_DESTINATION}
)

install(DIRECTORY include/
  DESTINATION ${CATKIN_GLOBAL_INCLUDE_DESTINATION}
  PATTERN ".svn" EXCLUDE
)
