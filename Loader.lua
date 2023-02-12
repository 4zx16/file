--[[
 || ?? AUTHOR: @4zx16 || SS Loader
]]
local PhysicalProperties = {
	Interface = script.Parent.Parent.Parent.SS;
	UI = script.Parent.Parent.UI;
}
local settings = {
	Active = true;
	Draggable = true;
	Reset_On_Spawn = false;
	IgnoreGuiInset = true;
	Cooldown = 3;
}
--[[
---------------------------------------------------------------------
                   CHANGES TO FALSE ON SS LOAD: 
----------------------------------------------------------------------
--]]
PhysicalProperties.UI.Visible = false
print("(??) ".. PhysicalProperties.UI.Name.." is Loading!...")
wait(settings.Cooldown)
--[[
---------------------------------------------------------------------
                   CHANGES FRAME PROPERTIES: 
----------------------------------------------------------------------
--]]
PhysicalProperties.UI.Active = settings.Active
PhysicalProperties.UI.Draggable = settings.Draggable
--[[
---------------------------------------------------------------------
                  CHANGES UI GUI PROPERTIES: 
----------------------------------------------------------------------
--]]
PhysicalProperties.Interface.ResetOnSpawn = settings.Reset_On_Spawn
PhysicalProperties.Interface.IgnoreGuiInset = settings.IgnoreGuiInset
--[[
---------------------------------------------------------------------
                   LOADING WAS FINISHED: 
----------------------------------------------------------------------
--]]
print("(??) ".. PhysicalProperties.UI.Name.." is Loaded!...")
PhysicalProperties.UI.Visible = true
script:Destroy()