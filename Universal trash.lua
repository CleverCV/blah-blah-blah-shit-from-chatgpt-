local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local module = {}

module["gameId"] = 0
module["Name"] = "Universal Movement"

local function getHumanoid()
    local character = LocalPlayer.Character
    if not character then return nil end

    return character:FindFirstChildOfClass("Humanoid")
end

module[1] = {
    Type = "Range",
    Args = {
        "WalkSpeed",
        16,
        100,
        1,
        function(Self, value)
            local humanoid = getHumanoid()
            if humanoid then
                humanoid.WalkSpeed = value
            end
        end
    }
}

module[2] = {
    Type = "Range",
    Args = {
        "JumpPower",
        50,
        200,
        1,
        function(Self, value)
            local humanoid = getHumanoid()
            if humanoid then
                humanoid.JumpPower = value
            end
        end
    }
}

getgenv().Modules[#getgenv().Modules + 1] = module

return module
