---@class User
---@field id integer
---@field username string
---@field email_address string
---@field password string
---@field created_at integer
---@field updated_at integer
local User = {}

---@class UserInput
---@field email_address string
---@field password string
---@field username string
local UserInput = {}

---@param user_input UserInput
---@return User
function User:new(user_input)
    local new_user = {
        username = user_input.username,
        email_address = user_input.email_address,
        password = user_input.password,
        created_at = os.time(),
        updated_at = os.time()
    }

    setmetatable(new_user, self)

    self.__index = self

    return new_user
end

---@class UserInfo
---@field email string
---@field username string
local UserInfo = {}

---@return UserInfo
function User:info()
    return {
        username = self.username,
        email_address = self.email_address
    }
end

return User
