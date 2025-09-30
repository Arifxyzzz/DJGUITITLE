local topbar = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("DJGUI"):WaitForChild("Frame"):WaitForChild("TopBar")

-- Hapus label lama
local oldLabel = topbar:FindFirstChild("TitleLabel")
if oldLabel then oldLabel:Destroy() end

-- Bikin label baru
local title = Instance.new("TextLabel")
title.Name = "TitleLabel"
title.Parent = topbar
title.Size = UDim2.new(1, 0, 0.739, 0)
title.Position = UDim2.new(0.011, 0, 0.124, 0)
title.BackgroundTransparency = 1
title.Text = "Axzy DJ v1.3"
title.Font = Enum.Font.Michroma
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextXAlignment = Enum.TextXAlignment.Left

-- Gradient text
local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(226, 196, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(148, 55, 255))
}
gradient.Parent = title

-- Stroke
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 255, 255)
stroke.Thickness = 0.3
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
stroke.Parent = title

-- Gradient stroke
local strokeGradient = Instance.new("UIGradient")
strokeGradient.Color = gradient.Color
strokeGradient.Parent = stroke

-- Animasi
task.spawn(function()
    while task.wait(0.05) do
        local offset = (tick() % 5) / 5
        gradient.Offset = Vector2.new(offset, 0)
        strokeGradient.Offset = Vector2.new(offset, 0)
    end
end)
