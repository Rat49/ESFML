local helpers = dofile("helpers.lua")
-----------------------------------------------------------------------------------------------------------------------
project ("editor")
    kind ("WindowedApp")
    systemversion (helpers.sdk_version)
    language ("C++")
    characterset ("Unicode")
    --debugcommand ("%{cfg.targetname}")
    --debugdir ("%{cfg.targetdir}")

    defines
    {
    }
    
    postbuildcommands
    {
        --'{COPY} "' .. helpers.sfml.binaries .. '" "%{cfg.targetdir}/*.*"',
    }
    
    includedirs
    {
        --helpers.sfml.include,
        helpers.source.editor.root,
        helpers.source.shared.root
    }

    libdirs
    {
        helpers.sfml.libraries,
    }

    links
    {
        "opengl32",
        "freetype",
        "ws2_32",
        "winmm",
        "openal32",
        "gdi32",
    }
    
    filter { "configurations:Debug" }
        links
        {
            "sfml-window",
            "sfml-system",
            "sfml-graphics",
            "sfml-audio",
            "sfml-network"
        }

    filter { "configurations:Release" }
        links
        {
            "sfml-window",
            "sfml-system",
            "sfml-graphics",
            "sfml-audio",
            "sfml-network"
        }

    --right now we take whole folder. but in near future we will split everything by libraries
    files
    {
        helpers.source.editor.root .. "/**.cpp",
        helpers.source.editor.root .. "/**.h",
    }

    vpaths
    {
        ["Source files/*"] = 
        {
            helpers.source.editor.root .. "/**.cpp",
        },
        ["Header files/*"] = 
        {
            helpers.source.editor.root .. "/**.h",
        },        
    }
-----------------------------------------------------------------------------------------------------------------------