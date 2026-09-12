local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local module = {}

module["gameId"] = 0
module["Name"] = "Universal Movement"

local function getHumanoid()
    local character = LocalPlayer.Character
    if not character then
        return nil
    end

    return character:FindFirstChildOfClass("Humanoid")
end

module[1] = {
    Type = "Text",
    Args = {"Universal Movement"}
}

module[2] = {
    Type = "Input",
    Args = {
        "WalkSpeed",
        "Set Speed",
        function(Self, text)
            local humanoid = getHumanoid()
            local value = tonumber(text)

            if humanoid and value then
                humanoid.WalkSpeed = value
            end
        end
    }
}

module[3] = {
    Type = "Input",
    Args = {
        "JumpPower",
        "Set Jump",
        function(Self, text)
            local humanoid = getHumanoid()
            local value = tonumber(text)

            if humanoid and value then
                humanoid.UseJumpPower = true
                humanoid.JumpPower = value
            end
        end
    }
}

getgenv().Modules[#getgenv().Modules + 1] = module

return module
