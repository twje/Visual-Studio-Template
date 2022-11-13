workspace "Workspace"
	architecture "x64"
	startproject "Project"

	configurations
	{
		"Debug",
		"Release",		
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"


project "Project"
	location "Project"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"		
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"		
		runtime "Release"
		optimize "on"
