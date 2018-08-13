-----------------------------------------------------------------------------------------------------------------------
local helpers = {}
-----------------------------------------------------------------------------------------------------------------------
function helpers.get_sdk_version()
    local v = os.getWindowsRegistry("HKLM:SOFTWARE\\Wow6432Node\\Microsoft\\Microsoft SDKs\\Windows\\v10.0\\ProductVersion") .. ".0"
    return v
end
-----------------------------------------------------------------------------------------------------------------------
helpers.sfml = {}
helpers.box2d = {}
helpers.wxwidgets = {}

helpers.sfml.root = os.getenv("SFML_ROOT")
helpers.sfml.libraries = helpers.sfml.root .. "/lib"
helpers.sfml.includes = helpers.sfml.root .. "/include"
helpers.sfml.binaries = helpers.sfml.root .. "/bin"

helpers.box2d.root = os.getenv("BOX2D_ROOT")
helpers.wxwidgets.root = os.getenv("WXWIDGETS_ROOT")
-----------------------------------------------------------------------------------------------------------------------
helpers.source = {}
helpers.source.engine = {}
helpers.source.editor = {}
helpers.source.shared = {}

helpers.source.root = "../source"
helpers.source.engine.root = helpers.source.root .. "/engine"
helpers.source.editor.root = helpers.source.root .. "/editor"
helpers.source.shared.root = helpers.source.root .. "/shared"
-----------------------------------------------------------------------------------------------------------------------
return helpers