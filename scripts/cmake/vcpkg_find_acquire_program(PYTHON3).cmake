if(CMAKE_HOST_WIN32)
    set(program_name python)
    set(program_version 3.10.7)
    if(VCPKG_TARGET_ARCHITECTURE STREQUAL "x86")
        set(tool_subdirectory "python-${program_version}-x86")
        set(download_urls "https://www.python.org/ftp/python/${program_version}/python-${program_version}-embed-win32.zip")
        set(download_filename "python-${program_version}-embed-win32.zip")
        set(download_sha512 a69445906a909ce5f2554c544fe4251a8ab9c5028b531975b8c78fa8e98295b2bf06e1840f346a3c0edf485a7792c40c9d318bffd36b9c7829ac72b7cf8697bc)
    else()
        set(tool_subdirectory "python-${program_version}-x64")
        set(download_urls "https://www.python.org/ftp/python/${program_version}/python-${program_version}-embed-amd64.zip")
        set(download_filename "python-${program_version}-embed-amd64.zip")
        set(download_sha512 29b47f8073b54c092a2c8b39b09ab392f757a8c09149e8d2de043907fffb250b5f6801175e16fedb4fae7b6555822acdc57d81d13c2fea95ef0f6ed717f86cb9)
    endif()
    set(paths_to_search "${DOWNLOADS}/tools/python/${tool_subdirectory}")
    vcpkg_list(SET post_install_command "${CMAKE_COMMAND}" -E rm python310._pth)
else()
    set(program_name python3)
    set(brew_package_name "python")
    set(apt_package_name "python3")
endif()
