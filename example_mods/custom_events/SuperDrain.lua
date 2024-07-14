function onEvent(name, value1, value2) 
	if name == 'SuperDrain' then
		runTimer('drain', 0,1, 0,1);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	setProperty('health', getProperty('health')-0.001);
end