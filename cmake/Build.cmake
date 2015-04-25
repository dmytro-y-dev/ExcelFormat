#-----------------------------------------------
#  Source code compilation instructions
#-----------------------------------------------

include_directories(include/ExcelFormat)

FILE(GLOB PROJECT_SOURCE_FILES source/*.cpp)

add_library(ExcelFormat STATIC ${PROJECT_SOURCE_FILES})
