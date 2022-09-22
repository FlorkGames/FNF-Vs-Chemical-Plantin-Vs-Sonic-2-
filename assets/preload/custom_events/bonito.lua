function onEvent(name,value1)
	if name == 'bonito' then
		if value1 == 'on' then
			doTweenY('gfascend','gf',480,2, 'bounceOut')
			doTweenAngle('gfbirl','gf',0,1,'elasticOut')
			cameraFlash('game', 'FFFFFF', 3, true)
			makeLuaSprite('white', 'empty', 0, -100)
			makeGraphic('white', 1280, 1120, 'FFFFFF')
			setScrollFactor('white',0,0)
			addLuaSprite('white', false)
		elseif value1 == 'off' then
			cameraFlash('game', '000000', 3, true)
			removeLuaSprite('white',true)
		end
	end
end