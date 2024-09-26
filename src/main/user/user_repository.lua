---@class UserRepository
---@field users User[]
local UserRepository = {
    users = {}
}

---@return UserRepository
function UserRepository:new()
    local new_user_repository = {
        users = {}
    }

    setmetatable(new_user_repository, self)

    self.__index = self

    return new_user_repository

end

---@param user User
---@return nil
function UserRepository:add_user(user)
    table.insert(self.users, user)

end

---@return User[]
function UserRepository:get_all_users()
    return self.users

end

---@param email string
---@return User
function UserRepository:get_user_by_email(email)
    for _, user in ipairs(self.users) do
        if user.email_address == email then
            return user
        end
    end
end

return UserRepository
