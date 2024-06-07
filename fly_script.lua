local flying = false

local function toggleFlight()
    local player = game:GetService("Players").LocalPlayer
    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        if not flying then
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            flying = true
        else
            humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
            flying = false
        end
    end
end

local flyButton = Instance.new("TextButton")
flyButton.Text = "Toggle Flight"
flyButton.Size = UDim2.new(0, 200, 0, 50)
flyButton.Position = UDim2.new(0.5, -100, 0.9, -25)
flyButton.Parent = game:GetService("Players").LocalPlayer.PlayerGui

flyButton.MouseButton1Click:Connect(toggleFlight)
