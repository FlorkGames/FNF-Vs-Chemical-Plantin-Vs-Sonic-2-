function goodNoteHit(id, noteData, noteType, isSustainNote)
	setProperty('iconP1.y',590)
	doTweenY('boin','iconP1',563,0.3, cubeOut)
end

function opponentNoteHit()
	setProperty('iconP2.y',590)
	doTweenY('boin','iconP2',563,0.3, cubeOut)
end