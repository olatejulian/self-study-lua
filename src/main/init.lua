package.path = package.path .. ";src/?.lua;src/?/init.lua" .. ";src/main/?.lua;src/main/?/init.lua"

local app = require("app")

app.bootstrap()
