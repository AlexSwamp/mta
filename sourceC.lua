--[[
*********************************************************************************
*								Szükséglet fogyás   							*
*********************************************************************************
--]]

local mTimer = (1000*60)*5 -- öt percenként levesz tőled x értéket
function hpLoose()
		if getElementHealth(getLocalPlayer()) > 0 then
			local randomLose = math.random(5,10)
			local default = getElementHealth(getLocalPlayer()) or 100
			local newValue = default-randomLose
			if randomLose + default > 100 then
				randomLose = math.random(5,10)
			else
				setElementHealth(getLocalPlayer(), newValue)
				--outputChatBox("egy érték levonva..")
			end
		else
			outputChatBox("#F22613[Figyelem] #ffffffÉhes vagy! Kezdj el enni, különben gondok lesznek...",255,255,255,true)
		end
end
setTimer(hpLoose,mTimer,0)
