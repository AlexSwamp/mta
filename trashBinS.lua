function trashAddToHand(p)

	-- Animáció
	setPedAnimation(p, "CARRY", "crry_prtial", 0, true, false, true, true)
	
	--ElementData a munkára
	setElementData(p,"animJob",true)
	
	-- Tiltások
	toggleControl(p,"jump",false)
	toggleControl(p,"sprint",false)
	toggleControl(p,"fire",false)
	toggleControl(p,"next_weapon",false)
	toggleControl(p,"previous_weapon",false)
	
end
addEvent("trashAddToHand",true)
addEventHandler("trashAddToHand",root,trashAddToHand)
