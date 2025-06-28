# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_seav_bot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED seav_bot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(seav_bot_FOUND FALSE)
  elseif(NOT seav_bot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(seav_bot_FOUND FALSE)
  endif()
  return()
endif()
set(_seav_bot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT seav_bot_FIND_QUIETLY)
  message(STATUS "Found seav_bot: 0.0.0 (${seav_bot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'seav_bot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${seav_bot_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(seav_bot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${seav_bot_DIR}/${_extra}")
endforeach()
