local user = require("main.user")

local App = {}

---@return nil
function App.bootstrap()
    print("Initializing Application...")

    local user_repository = user.UserRepository:new()
    local user_service = user.UserService:new(user_repository)

end

return App
