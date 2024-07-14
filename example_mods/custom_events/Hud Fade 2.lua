-- Event notes hooks
local fadeDuration = 0
local Hudalpha = 0
function onEvent(name, value1, value2)
	if name == 'Hud Fade 2' then
		Hudalpha = tonumber(value2)
		fadeDuration = tonumber(value1);
		if fadeDuration < 0 then
			fadeDuration = 0;
		end
		if fadeDuration == 0 then
			setProperty('camGame.alpha', Hudalpha);
		else
			doTweenAlpha('hudFadeEventTween', 'camGame', Hudalpha, fadeDuration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end