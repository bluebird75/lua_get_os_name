[![Build Status](https://travis-ci.org/bluebird75/lua_get_os_name.svg?branch=master)](https://travis-ci.org/bluebird75/lua_get_os_name)
[![Build status](https://ci.appveyor.com/api/projects/status/80un24yab0u8kpcn?svg=true)](https://ci.appveyor.com/project/bluebird75/lua-get-os-name)

## get_os_name.lua
by Philippe Fremy

Utility to get the OS name and architecture in pure lua, without any dependency on other modules.

Example on Windows:

    c:> lua test_get_os_name.lua
    os="Windows" arch="x86"

Example on MacOs X:

    $ lua test_get_os_name.lua
    os="Mac" arch="x86_64"

Example on Linux:

    $ lua test_get_os_name.lua
    os="Linux" arch="x86_64"

Heavily based on the following Gist: https://gist.github.com/soulik/82e9d02a818ce12498d1
