function notification(msg)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = "trash.exe";
		Text = msg;
		Duration = 2;
	})
end

function __main__()
	-- just run it once
local player = game.Players.LocalPlayer

for _, item in pairs(player.Items:GetChildren()) do
			spawn(function()
				while wait(1) do
					for _ = 1, 100 do
						game:GetService("Players").LocalPlayer.Character.Noobbucket:FindFirstChildWhichIsA("Model").Main.Hit:FireServer(
							item.Value,
    						Vector3.new(-9.12907886505127, -1.391688346862793, -5.251297950744629),
    						item,
    						"Hit",
    						nil --[[Color3]]
						)
						workspace.Ints.Upgrade:FireServer(item)
					end
				end
			end)
		end
end

local mt = getrawmetatable(game)
local namecall = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self,...) -- self ( the instance )  and args 
    if getnamecallmethod() == 'FireServer' and tostring(self) == 'Swapzone' then -- checking if we're firing a remote
        local args = {...}
		notification("Detected going to new zone reloading script in 2 seconds.")
        wait(2)
		__main__()
    end
    return namecall(self,...)
end)
setreadonly(mt,true)

notification("scriptRan")
