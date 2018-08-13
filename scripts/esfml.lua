-----------------------------------------------------------------------------------------------------------------------	
workspace ("esfml")
    configurations { "Debug", "Release" }
    architecture ("x64")
    location ( "../generated/projects" )
    targetdir ( "../generated/bin/%{prj.name}_%{cfg.buildcfg}" )
    objdir ( "../generated/obj/%{prj.name}_%{cfg.buildcfg}" )

    flags ("FatalWarnings")
    warnings ("Extra")

    filter ("configurations:Debug")
        defines { "_DEBUG" }
        symbols ("On")
        optimize ("Off")

    filter ("configurations:Release")
        defines { "NDEBUG" }
        symbols ("Off")
        optimize ("On")
        
    filter {}
    
-----------------------------------------------------------------------------------------------------------------------    
    include ("engine")
    include ("editor")
-----------------------------------------------------------------------------------------------------------------------