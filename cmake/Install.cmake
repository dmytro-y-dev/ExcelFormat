#-----------------------------------------------
#  Installation instructions
#-----------------------------------------------

include_directories(include)

FILE(GLOB PROJECT_INCLUDE_FILES include/*.h include/*.hpp)

install(TARGETS ExcelFormat DESTINATION lib)
install(FILES ${PROJECT_INCLUDE_FILES} DESTINATION include)
