local angleshit = 0.9;
local anglevar = 0.9;
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if difficulty == 350 then
		if curBeat < 275 then
			if curBeat > 275 then
				cameraShake('cam', '1', '1')
			end
		end
	end
end

function onBeatHit()
    if curBeat > 68 then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
    end
end