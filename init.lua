-- init.lua

-- Load global settings and key remaps
require("lua.settings")  -- This loads global settings
require("lua.remaps")    -- This loads key remaps

-- Set up Lazy.nvim and load the plugins
require("lua.lazyinit")  -- Lazy.nvim setup (will be in lua/lazyinit.lua)

