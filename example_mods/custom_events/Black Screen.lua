
-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "Black Screen" then
		if value1 == '1' then
			doTweenAlpha('tweenCutOffAlpha', 'camGame', 1, 0.5, 'linear');
		end
		if value1 == '2' then
			doTweenAlpha('tweenCutOffAlpha2', 'camGame', 0, 0.5, 'linear');
		end
		if value1 == '3' then
			setProperty('camGame.alpha', 0);
		end
		if value1 == '4' then
			setProperty('camGame.alpha', 1);
		end
	end
end