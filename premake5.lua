project "glm"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir("../bin/" .. OutputDir .. "/%{prj.name}")
    objdir("../bin-int/" .. OutputDir .. "/%{prj.name}")

    files {
        "glm/**.hpp",
        "glm/**.inl",
    }

    filter "system:windows"
        systemversion "latest"

    ConfigurationsSetting()