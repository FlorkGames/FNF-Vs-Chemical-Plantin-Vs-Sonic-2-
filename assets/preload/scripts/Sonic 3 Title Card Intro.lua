function onCreatePost()
	--Variable Shit
		TitleCardType = 'Sonic 2' -- the type of title card you want, the current options are 'Sonic 2', 'Sonic 3'.
		TheCustomZoneName = "Among us isn't funny" --custom zone name text.
		CustomZoneName = false -- put to true if you want a custom zone name or else it will be the song name.
		ZoneFont = "jacked.ttf" -- the font used for the zone name, the current options are 'Andes.ttf'(S3&K), 'Gaslight.ttf'(S2), or whatever font you have in your fonts folder.
		barname = 'FNF PE' -- the text on the red bar you want displayed, the options are: 'S3' 'SK' 'S3&K' 'FNF' 'FNF no line' 'full FNF' 'PE' 'FNF PE' 'FNF & PE' 'FNF + PE' 'Blank'. (only for Sonic 3 title cards type)
		actnum = '1' -- the act number you want displayed, the options are: '1' '2' '1 no act text' '2 no act text'. if you are using Sonic 2 title cards, it can be whatever you want.
		zone = 'zone' -- the text that says "ZONE", you can change it to whatever you want or leave it blank if you don't want anything to show there.
		backcolor = 'Sonic' -- changes the color of the back sprite to blue if you chose 'Sonic' or green if you chose 'Knuckles'. (only for Sonic 2 title cards type)
end

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0.1);
		runTimer('countdown', 2)
		allowCountdown = true;
		--startCountdown()
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' and not CustomZoneName and TitleCardType == 'Sonic 2' then
		makeLuaSprite('bar', 'S2 Title Card/Side', 156, -1000)
		setObjectCamera('bar', 'hud')
		setProperty('bar.antialiasing', false)
		scaleObject('bar', 3, 3);
		makeLuaSprite('black', 'black', 0, 0);
		addLuaSprite('black', true);
		setObjectCamera('black', 'hud');
		setProperty('black.antialiasing', false)
		if backcolor == 'Knuckles' then
		makeLuaSprite('blackb', 'S2 Title Card/BackK', 0, -1000);
		else
		makeLuaSprite('blackb', 'S2 Title Card/Back', 0, -1000);
		end
		addLuaSprite('blackb', true);
		setObjectCamera('blackb', 'hud');
		scaleObject('blackb', 3, 3);
		makeLuaSprite('blacky', 'S2 Title Card/Bottom', 2200, 0);
		addLuaSprite('blacky', true);
		setObjectCamera('blacky', 'hud');
		scaleObject('blacky', 3, 3);
		setProperty('blacky.antialiasing', false)
		addLuaSprite('bar', true)
		makeLuaText('text', songName, 2000, 2200, 150)
		setTextSize('text', 100)
		setTextBorder('text', 0)
		setTextFont('text', ZoneFont)
		makeLuaText('zone', zone, 2000, 2200, 250)
		setTextSize('zone', 100)
		setTextBorder('zone', 0)
		setTextFont('zone', ZoneFont)
		makeLuaText('act', actnum, 100, 2200, 250)
		setTextColor('act', '0xFFf6ff00');
		setTextFont('act', ZoneFont)
		setTextSize('act', 150)
		setTextBorder('act', 0)
		addLuaText('text')
		addLuaText('zone')
		addLuaText('act')

		runTimer('appears2', 0.3, 1)
		runTimer('fadeouts2', 2, 1)
		runTimer('flyoffs2', 3, 1)
		runTimer('flyoffblue', 3, 1)
		runTimer('flyoffs2text', 4, 1)
		runTimer('flyoffred', 2.5, 1)
	end
	if tag == 'startText' and CustomZoneName and TitleCardType == 'Sonic 2' then
		makeLuaSprite('bar', 'S2 Title Card/Side', 0, -1000)
		setObjectCamera('bar', 'hud')
		setProperty('bar.antialiasing', false)
		scaleObject('bar', 3, 3);
		makeLuaSprite('black', 'black', 0, 0);
		addLuaSprite('black', true);
		setObjectCamera('black', 'hud');
		setProperty('black.antialiasing', false)
		makeLuaSprite('blackb', 'S2 Title Card/Back', 0, -1000);
		addLuaSprite('blackb', true);
		setObjectCamera('blackb', 'hud');
		scaleObject('blackb', 3, 3);
		makeLuaSprite('blacky', 'S2 Title Card/Bottom', 2200, 0);
		addLuaSprite('blacky', true);
		setObjectCamera('blacky', 'hud');
		scaleObject('blacky', 3, 3);
		setProperty('blacky.antialiasing', false)
		addLuaSprite('bar', true)
		makeLuaText('text', TheCustomZoneName, 2000, 2200, 150)
		setTextSize('text', 130)
		setTextBorder('text', 0)
		setTextFont('text', ZoneFont)
		makeLuaText('zone', zone, 2000, 2200, 250)
		setTextSize('zone', 130)
		setTextBorder('zone', 0)
		setTextFont('zone', ZoneFont)
		makeLuaText('act', actnum, 100, 2200, 250)
		setTextColor('act', '0xFFf6ff00');
		setTextFont('act', ZoneFont)
		setTextSize('act', 200)
		setTextBorder('act', 0)
		addLuaText('text')
		addLuaText('zone')
		addLuaText('act')

		runTimer('appears2', 0.3, 1)
		runTimer('fadeouts2', 2, 1)
		runTimer('flyoffs2', 3, 1)
		runTimer('flyoffblue', 3, 1)
		runTimer('flyoffs2text', 4, 1)
		runTimer('flyoffred', 2.5, 1)
	end
	if tag == 'startText' and not CustomZoneName and TitleCardType == 'Sonic 3' then
		makeLuaSprite('bar', 'S3 Title Card/'.. barname.. ' Redbar', 100, -1000)
		setObjectCamera('bar', 'hud')
		setProperty('bar.antialiasing', false)
		scaleObject('bar', 3, 3);
		makeLuaSprite('black', 'black', 0, 0);
		addLuaSprite('black', true);
		setObjectCamera('black', 'hud');
		addLuaSprite('bar', true)
		makeLuaText('text', songName, 2000, 2200, 250)
		setTextSize('text', 130)
		setTextBorder('text', 0)
		setTextFont('text', ZoneFont)
		makeLuaText('zone', zone, 2000, 2200, 350)
		setTextSize('zone', 130)
		setTextBorder('zone', 0)
		setTextFont('zone', ZoneFont)
		makeLuaSprite('act', 'S3 Title Card/Act'.. actnum, 2200, 500)
		setProperty('act.antialiasing', false)
		scaleObject('act', 4, 4);
		setObjectCamera('act', 'hud')
		addLuaText('text')
		addLuaText('zone')
		addLuaSprite('act', true)

		runTimer('appear', 0.3, 1)
		runTimer('fadeout', 2, 1)
		runTimer('flyoff', 3, 1)
	end
	if tag == 'startText' and CustomZoneName and TitleCardType == 'Sonic 3' then
		makeLuaSprite('bar', 'S3 Title Card/'.. barname.. ' Redbar', 100, -1000)
		setObjectCamera('bar', 'hud')
		setProperty('bar.antialiasing', false)
		scaleObject('bar', 3, 3);
		makeLuaSprite('black', 'black', 0, 0);
		addLuaSprite('black', true);
		setObjectCamera('black', 'hud');
		addLuaSprite('bar', true)
		makeLuaText('text', TheCustomZoneName, 2000, 2200, 250)
		setTextSize('text', 130)
		setTextBorder('text', 0)
		setTextFont('text', ZoneFont)
		makeLuaText('zone', zone, 2000, 2200, 350)
		setTextSize('zone', 130)
		setTextBorder('zone', 0)
		setTextFont('zone', ZoneFont)
		makeLuaSprite('act', 'S3 Title Card/Act'.. actnum, 2200, 500)
		setProperty('act.antialiasing', false)
		scaleObject('act', 4, 4);
		setObjectCamera('act', 'hud')
		addLuaText('text')
		addLuaText('zone')
		addLuaSprite('act', true)

		runTimer('appear', 0.3, 1)
		runTimer('fadeout', 2, 1)
		runTimer('flyoff', 3, 1)

	elseif tag == 'appear' then
		doTweenY('bartween', 'bar', -100, 1.2, 'circInOut')
		doTweenX('texttween', 'text', -400, 1.2, 'circInOut')
		doTweenX('zonetween', 'zone', -200, 1.2, 'circInOut')
		doTweenX('acttween', 'act', 800, 1.2, 'circInOut')
	end
	if tag == 'fadeout' then
		doTweenAlpha('blackfade', 'black', 0, 0.5, 'circInOut')
	end
	if tag == 'flyoff' then
		doTweenY('bartween', 'bar', -1000, 1.2, 'circInOut')
		doTweenX('texttween', 'text', 2200, 1.2, 'circInOut')
		doTweenX('zonetween', 'zone', 2200, 1.2, 'circInOut')
		doTweenX('acttween', 'act', 2200, 1.2, 'circInOut')
	end
	if tag == 'appears2' then
		doTweenY('blacktween', 'blackb', 0, 0.5, 'circInOut')
		doTweenY('bartween', 'bar', 0, 1.2, 'circInOut')
		doTweenX('yellotween', 'blacky', 200, 1.2, 'circInOut')
		doTweenX('texttween', 'text', -400, 1.2, 'circInOut')
		doTweenX('zonetween', 'zone', -200, 1.2, 'circInOut')
		doTweenX('acttween', 'act', -200, 1.2, 'circInOut')
	end
	if tag == 'fadeouts2' then
		doTweenAlpha('blackfade', 'black', 0, 0.5, 'circInOut')
	end
	if tag == 'flyoffblue' then
	doTweenY('blacktween', 'blackb', -1000, 0.5, 'circInOut')
	end
	if tag == 'flyoffred' then
	doTweenY('bartween', 'bar', -1000, 1.2, 'circInOut')
	end
	if tag == 'flyoffyellow' then
	doTweenY('bartween', 'bar', -1000, 1.2, 'circInOut')
	end
	if tag == 'flyoffs2' then
		doTweenX('yellotween', 'blacky', 2200, 1.2, 'circInOut')
	end
	if tag == 'flyoffs2text' then
		doTweenX('texttween', 'text', 2200, 1.2, 'circInOut')
		doTweenX('zonetween', 'zone', -2200, 1.2, 'circInOut')
		doTweenX('acttween', 'act', -2200, 1.2, 'circInOut')
	end
	if tag == 'countdown' then
		startCountdown()
	end
end

function onTweenCompleted(tag)
	if tag == 'act' then
		removeLuaSprite('act')
		removeLuaSprite('bar')
		removeLuaText('zone')
		removeLuaText('text')
	end
end