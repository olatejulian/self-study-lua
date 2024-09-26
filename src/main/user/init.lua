local User = require("user.user_entity")
local UserRepository = require("user.user_repository")
local UserService = require("user.user_service")

---@class UserModule
---@field User User
---@field UserRepository UserRepository
---@field UserService UserService
local UserModule = {
    User = User,
    UserRepository = UserRepository,
    UserService = UserService
}

return UserModule
