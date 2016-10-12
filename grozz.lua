function checkState()
	if isCursorShowing() then
		camera.speed = 0
	else
		camera.speed = 7.5
	end	
end
addEventHandler("onClientRender",getRootElement(),checkState)
