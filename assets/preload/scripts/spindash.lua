function onEvent(name,value1)
	if name == 'Play Animation' and value1 == 'spin' then
	noteTweenAngle('AJ',4 , 0 , 0.01, linear);
	noteTweenAngle('BJ',5 , 0 , 0.01, linear);
	noteTweenAngle('CJ',6 , 0 , 0.01, linear);
	noteTweenAngle('DJ',7 , 0 , 0.01, linear);

	
	-- bf notespin
	if curBeat % 2 == 0 then
		noteTweenAngle('A',4 , 360 , 0.2, linear);
		noteTweenAngle('B',5 , 360 , 0.2, linear);

		noteTweenAngle('C',6 , 360 , 0.2, linear);
		noteTweenAngle('D',7 , 360 , 0.2, linear);

		end
	end
end