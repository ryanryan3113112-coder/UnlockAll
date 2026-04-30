local TargetLevel = 666
local lp = game:GetService("Players").LocalPlayer

lp:SetAttribute("Level", TargetLevel)

task.spawn(function()
    while task.wait(1) do
        if lp:GetAttribute("Level") ~= TargetLevel then
            lp:SetAttribute("Level", TargetLevel)
        end
    end
end)
