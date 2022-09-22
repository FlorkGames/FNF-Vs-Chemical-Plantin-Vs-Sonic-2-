function onEvent(name,value1)
	if name == 'agua' then
		if value1 == 'vem agua' then
            setProperty("camGame.zoom",1.4)
			cameraFlash('game', 'FFFFFF', 0.5, true)
			addLuaSprite('agua1',true)
			addLuaSprite('agua2',true)
			makeLuaSprite('purple', 'purple', 0, -100)
			setScrollFactor('purple',0,0)
			addLuaSprite('purple', true)
			scaleObject('purple',1,1.5)
			doTweenY('gfascend','gf',40,40, linear)
			doTweenAngle('gfbirl','gf',50,30,linear)

		elseif value1 == 'fecho pode volta' then
			doTweenAlpha('agua1v', 'agua1', 0, 3, 'cubeOut');
			doTweenAlpha('agua2v', 'agua2', 0, 3, 'cubeOut');
			removeLuaSprite('purple', true)
		end
	end
end