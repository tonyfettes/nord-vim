" reloading all nord highlights
lua package.loaded["nord"] = nil
lua package.loaded["nord.base"] = nil
lua require("lush")(require("nord"))
