function onCreate()
	makeLuaSprite('back','back',-230,-540)
	makeLuaSprite('floor','floor',-250,-50)
	
	addLuaSprite('back',false)
	addLuaSprite('floor',false)
	
	setScrollFactor('back',0.3,0.1)
	--scaleObject('floor',1.3,1.3)
	scaleObject('back',1.3,1.3)

close(true)
end