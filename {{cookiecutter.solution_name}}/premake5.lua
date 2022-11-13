workspace "{{cookiecutter.solution_name}}"
	architecture "x64"
	startproject "{{cookiecutter.project_name}}"

	configurations
	{
		"Debug",
		"Release",		
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"


project "{{cookiecutter.project_name}}"
	location "{{cookiecutter.project_name}}"
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
