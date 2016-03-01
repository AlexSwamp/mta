function drawGraffiti()
	if not getElementData(localPlayer,"loggedIn") then return end
	local wallSource = getNearbyWall()
	if (wallSource) then
		outputChatBox("van fal")
	else 
		outputChatBox("nincs fal..")	
	end
end
addCommandHandler("graf",drawGraffiti)



function getNearbyWall()
	for _, walls in ipairs(getElementsByType("object")) do
		local vX, vY, vZ = getElementPosition(walls)
		local pX, pY, pZ = getElementPosition(localPlayer)
		local maxDist = 5

		if (tonumber(getDistanceBetweenPoints3D(vX, vY, vZ, pX, pY, pZ)) <= tonumber(maxDist)) then
			return walls
		end
	end
	return false
end
