function onCreate()
	addCharacterToList('bf-copy', 'boyfriend');
	
	makeLuaSprite('uproarScreenThing', nil, -700, -500);
	makeGraphic('uproarScreenThing', screenWidth * 2, screenHeight * 2, '000000');
	setScrollFactor('uproarScreenThing', 0, 0);
	addLuaSprite('uproarScreenThing', true);
	setProperty('uproarScreenThing.alpha', 000000);
	setProperty('uproarScreenThing.color', getColorFromHex('000000'));
	
	--makeAnimationList();
	--makeOffsets();
	--playAnimSilhouette(0, true);
end

function onEvent(name, value1, value2)
	if name == 'Boyfriend Silhouette' then
		if value1 == '1' then
			triggerEvent('Change Character', 'bf', 'bf-copy')
			setProperty('boyfriend.color', getColorFromHex('000000'));
			setProperty('boyfriend.alpha', 000000);
			setObjectOrder('boyfriendGroup', getObjectOrder('uproarScreenThing') + 1);
			doTweenAlpha('bfSilhouetteTween', 'boyfriend', 1, (crochet * 2) / 1000, 'linear');
		elseif value1 == '2' then
			doTweenAlpha('bfSilhouetteTween', 'boyfriend', 0, (crochet * 4) / 1000, 'linear');
		else
			setProperty('uproarScreenThing.color', getColorFromHex('000000'));
			doTweenAlpha('uproarScreenThingTween', 'uproarScreenThing', 1, (crochet * 4) / 1000, 'linear');
			if flashingLights then
				setBlendMode('uproarScreenThing', 'add');
			end
		end
	end
end