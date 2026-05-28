project "glfw"
    kind "StaticLib"
    language "c"
    staticruntime "on"

    targetdir ("../../bin/"..outputdir.."/%{prj.name}")
    objdir("../../bin-int/"..outputdir.."/%{prj.name}")

    files
    {
        "src/**.c",
    }

    includedirs
    {
        "include"
    }

    filter "system:windows"
        systemversion "latest"
        defines
        {
            "_GLFW_WIN32",
            "_CRT_SECURE_NO_WARNINGS",
        }
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"