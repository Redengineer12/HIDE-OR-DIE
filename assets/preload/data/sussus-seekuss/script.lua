function onStepHit()
	if curStep == 2 then 
		function opponentNoteHit()
			health = getProperty('health')
			if difficulty == 2 then
				if getProperty('health') > 0.04 then
					setProperty('health', health- 0.018)           
				end
			end	
		end
	end
	if curStep == 328 then 
		function opponentNoteHit()
			health = getProperty('health')
			if difficulty == 2 then
				if getProperty('health') > 0.04 then
					setProperty('health', health- 0.021)           
				end
			end	
		end
	end
	if curStep == 392 then 
		function opponentNoteHit()
			health = getProperty('health')
			if difficulty == 2 then
				if getProperty('health') > 0.04 then
					setProperty('health', health- 0.0275)           
				end
			end	
		end
	end
	if curStep == 584 then 
		function opponentNoteHit()
			health = getProperty('health')
			if difficulty == 2 then
				if getProperty('health') > 0.04 then
					setProperty('health', health- 0.03)           
				end
			end	
		end
	end
end