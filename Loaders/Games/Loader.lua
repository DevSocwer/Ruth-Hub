--// Auto Loader \\--
repeat task.wait() until game:IsLoaded();

--// Sender
local version = '2.7 lntel'
print(version)

--// Anti Kick Idle \\--
task.spawn(function()
    if not getgenv().AntiAfk == true then
        while true do task.wait(1100);
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"RightBracket",false,game);
            end)
        end
        getgenv().AntiAfk = true;
    end
  end

  --// Ui KeyGUI (if you want to)
local Loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/DevSocwer/Ruth-Hub/refs/heads/main/Loaders/Important/keysystem-opensource.lua"))()
Loader:Create({
    Name = "KeySystem",
    ImageID = "rbxassetid://14222444137",
    SaveKey = true,
    Callback = function(EnteredKey) 
        if EnteredKey == "1234" then 
            print("Whitelisted")
        else
            print("Invalid Key")
        end
        Loader:Destroy("KeySystem")
    end,
})
--
