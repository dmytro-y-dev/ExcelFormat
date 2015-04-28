#.rst:
# FindExcelFormat
# ---------------
#
# Find the ExcelFormat includes and library.
#
# Result Variables
# ^^^^^^^^^^^^^^^^
#
# This module defines the following variables:
#
# ::
#
#   EXCELFORMAT_INCLUDE_DIRS - where to find ExcelFormat.h, etc.
#   EXCELFORMAT_LIBRARIES    - list of libraries when using EXCELFORMAT.
#   EXCELFORMAT_FOUND        - true if ExcelFormat found.
#
# ::
#
# Hints
# ^^^^^
#
# A user may set ``EXCELFORMAT_ROOT`` to a ExcelFormat installation root to tell this
# module where to look.

set(_EXCELFORMAT_SEARCHES)

# Search EXCELFORMAT_ROOT first if it is set.
if (EXCELFORMAT_ROOT)
  set(_EXCELFORMAT_SEARCH_ROOT PATHS ${EXCELFORMAT_ROOT} NO_DEFAULT_PATH)
  list(APPEND _EXCELFORMAT_SEARCHES _EXCELFORMAT_SEARCH_ROOT)
endif()

# Normal search.
set(_EXCELFORMAT_SEARCH_NORMAL
  PATHS "$ENV{PROGRAMFILES}/ExcelFormat"
)
list(APPEND _EXCELFORMAT_SEARCHES _EXCELFORMAT_SEARCH_NORMAL)

set(EXCELFORMAT_NAMES ExcelFormat)

# Try each search configuration.
foreach(search ${_EXCELFORMAT_SEARCHES})
  find_path(EXCELFORMAT_INCLUDE_DIR NAMES ExcelFormat/ExcelFormat.h ${${search}} PATH_SUFFIXES include)
  find_library(EXCELFORMAT_LIBRARY  NAMES ${EXCELFORMAT_NAMES} ${${search}} PATH_SUFFIXES lib)
endforeach()

mark_as_advanced(EXCELFORMAT_LIBRARY EXCELFORMAT_INCLUDE_DIR)

# handle the QUIETLY and REQUIRED arguments and set EXCELFORMAT_FOUND to TRUE if
# all listed variables are TRUE
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ExcelFormat REQUIRED_VARS EXCELFORMAT_LIBRARY EXCELFORMAT_INCLUDE_DIR
                                       VERSION_VAR EXCELFORMAT_VERSION_STRING)

if(EXCELFORMAT_FOUND)
    set(EXCELFORMAT_INCLUDE_DIRS ${EXCELFORMAT_INCLUDE_DIR})
    set(EXCELFORMAT_LIBRARIES ${EXCELFORMAT_LIBRARY})

    if(NOT TARGET ExcelFormat::ExcelFormat)
      add_library(ExcelFormat::ExcelFormat UNKNOWN IMPORTED)
      set_target_properties(ExcelFormat::ExcelFormat PROPERTIES
        IMPORTED_LOCATION "${EXCELFORMAT_LIBRARY}"
        INTERFACE_INCLUDE_DIRECTORIES "${EXCELFORMAT_INCLUDE_DIRS}")
    endif()
endif()
