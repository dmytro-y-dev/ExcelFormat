IF(BIICODE)
   INCLUDE("cmake/biicode.cmake")
   RETURN()
ENDIF()

cmake_minimum_required(VERSION 3.1)

project(ExcelFormat)

include("cmake/Build.cmake")
include("cmake/Install.cmake")
