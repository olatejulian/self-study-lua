local User = require("user.user_entity")

---@class UserService
---@field user_repository UserRepository
local UserService = {}

---@param user_repository UserRepository
---@return UserService
function UserService:new(user_repository)
    local new_user_service = {
        user_repository = user_repository
    }

    setmetatable(new_user_service, self)

    self.__index = self

    return new_user_service
end

---@param user_input UserInput
---@return User
function UserService:create_user(user_input)
    local user = User:new(user_input)

    self.user_repository:add_user(user)

    return user
end

return UserService
