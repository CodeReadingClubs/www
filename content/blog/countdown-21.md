---
{
  "type": "blog",
  "author": "Felienne Hermans",
  "title": "Code Reading Club Reading Countdown - 21",
  "description": "Code Reading Club Reading Countdown - 21",
  "image": "images/articles/CRCRC-21.png",
  "draft": false,
  "published": "2021-12-21",
}

---



## Countdown - Snippet 21

Today, a snippet in CMake submitted by Jarno (@jarno87) (one of our top code readers!)

**Snippet**

![CRCRC-21](/images/articles/CRCRC-21.png)


```cmake
set(REAKTORO_USE_autodiff      "" CACHE PATH "Specify in case a specific autodiff library should be used.")
set(REAKTORO_USE_Catch2        "" CACHE PATH "Specify in case a specific Catch2 library should be used.")
set(REAKTORO_USE_Eigen3        "" CACHE PATH "Specify in case a specific Eigen library should be used.")
set(REAKTORO_USE_nlohmann_json "" CACHE PATH "Specify in case a specific nlohmann-json library should be used.")
set(REAKTORO_USE_Optima        "" CACHE PATH "Specify in case a specific Optima library should be used.")
set(REAKTORO_USE_phreeqc4rkt   "" CACHE PATH "Specify in case a specific Phreeqc library should be used.")
set(REAKTORO_USE_pybind11      "" CACHE PATH "Specify in case a specific pybind11 library should be used.")
set(REAKTORO_USE_ThermoFun     "" CACHE PATH "Specify in case a specific ThermoFun library should be used.")
set(REAKTORO_USE_yaml-cpp      "" CACHE PATH "Specify in case a specific yaml-cpp library should be used.")

function(ReaktoroFindPackage package)
    # ARGV0: package name (required)
    # ARGV1: optional package version (optional)
    if(DEFINED REAKTORO_USE_${ARGV0} AND NOT REAKTORO_USE_${ARGV0} STREQUAL "")
        find_package(${ARGV0} ${ARGV1} REQUIRED EXACT QUIET PATHS ${REAKTORO_USE_${ARGV0}} NO_DEFAULT_PATH)
    else()
        find_package(${ARGV0} ${ARGV1} REQUIRED QUIET)
    endif()
    if(${ARGV0}_FOUND)
        message(STATUS "Found ${ARGV0}: ${${ARGV0}_DIR} (found version \"${${ARGV0}_VERSION}\")")
    endif()
    set(${ARGV0}_FOUND ${${ARGV0}_FOUND} PARENT_SCOPE)  # export to parent (e.g., Eigen3_FOUND)
    set(${ARGV0}_DIR ${${ARGV0}_DIR} PARENT_SCOPE)  # export to parent (e.g., Eigen3_DIR)
endfunction()
```



**Question**

What is the purpose of this wrapper when used like `ReaktoroFindPackage(autodiff 0.6.0)`?

## Submission

Submit your answer in our [form](https://forms.gle/241ak21gMu1fRada6).