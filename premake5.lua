project "ImGui"
	kind "StaticLib"
	language "C++"
    cppdialect "c++17"

	location "%{wks.location}/build"
    targetdir "%{wks.location}/bin/bin/%{cfg.name}_%{cfg.architecture}"
    objdir "%{wks.location}/bin/obj/%{cfg.name}_%{cfg.architecture}"

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	links
	{
		"GLFW",

		"CoreFoundation.framework",
        "Cocoa.framework",
        "IOKit.framework",
        "CoreVideo.framework",
        "OpenGL.framework",
	}