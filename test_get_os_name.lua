
gon = require("get_os_name")

os_name, arch_name = gon.get_os_name()
print(("os=%q arch=%q"):format(gon.get_os_name()))

-- On Travis, Linux
if os.getenv("TRAVIS_OS_NAME") == 'linux' then
    print('Testing on Travis CI Linux machine')
    assert( os_name == "Linux")
    assert( arch_name == "x86_64")
    print("Test OK!")
end

-- On my local computer
if os.getenv("COMPUTERNAME") == 'DESKTOP-N4L2C0L' then
    print("Testing on Phil's computer")
    assert( os_name == "Windows")
    assert( arch_name == "x86")
    print("Test OK!")
end

-- On AppVeyor
if os.getenv("APPVEYOR") == 'True' then
    print("Testing on AppVeyor")
    assert( os_name == "Windows")
    assert( arch_name == "x86")
    print("Test OK!")
end
