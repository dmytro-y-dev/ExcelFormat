#-----------------------------------------------
#  Installation instructions
#-----------------------------------------------

include_directories(include)

FILE(GLOB PROJECT_INCLUDE_FILES include/ExcelFormat/*.h include/ExcelFormat/*.hpp)

install(TARGETS ExcelFormat DESTINATION lib)
install(FILES ${PROJECT_INCLUDE_FILES} DESTINATION include/ExcelFormat)
