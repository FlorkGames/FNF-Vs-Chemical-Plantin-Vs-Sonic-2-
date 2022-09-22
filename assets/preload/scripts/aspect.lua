-- Script edited and added stuff by Bluespike (@FrideyNehgGuy on twitter) give credits if you use it
-- Also original base script by Sky Remanifested give credits to the mod tho 

function onCreatePost()
		makeAnimatedLuaSprite('agua1','agua',0,1)
		makeAnimatedLuaSprite('agua2','agua',1121,1)
		addAnimationByPrefix('agua1','flow','água',24,true)
		addAnimationByPrefix('agua2','flow','água',24,true)
		setObjectCamera("agua1", "camother")
		setObjectCamera("agua2", "camother")
		objectPlayAnimation('agua1','flow',true)
		objectPlayAnimation('agua2','flow',true)
		precacheImage('aspect')
		precacheImage('agua')
        makeAnimatedLuaSprite('borderL', 'aspect',0,0)
		addAnimationByPrefix('borderL','aspect','aspect',12,true)
        addLuaSprite('borderL', false)
		objectPlayAnimation('borderL','aspect',true)
        setObjectCamera("borderL", "camother")
end
function onCreate()
	if not middlescroll then
		makeLuaText('TEXT', 'USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL USE MIDDLESCROLL', 1280, 0, 0)
		setTextSize('TEXT', 50)
		addLuaText('TEXT')
    end
end