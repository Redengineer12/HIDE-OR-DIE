function onCreate()
    --background shit
	makeLuaSprite('espacio', 'cafeteria/espacio', -300, 0);
	setLuaSpriteScrollFactor('espacio', 0.9, 0.9);
	scaleObject('espacio', 1, 1);

	makeLuaSprite('planetas', 'cafeteria/planetas', -300, 0);
	setLuaSpriteScrollFactor('planetas', 0.9, 0.9);
	scaleObject('planetas', 1, 1);

	makeAnimatedLuaSprite('star', 'cafeteria/star',-300, 0);
	setLuaSpriteScrollFactor('star', 0.9, 0.9);
	scaleObject('star',0.9, 0.9);

	makeLuaSprite('fondo', 'cafeteria/fondo', -300, 0);
	setLuaSpriteScrollFactor('fondo', 0.9, 0.9);
	scaleObject('fondo', 1, 1);

	makeLuaSprite('mesas', 'cafeteria/mesas', -300, 0);
	setLuaSpriteScrollFactor('mesas', 0.9, 0.9);
	scaleObject('mesas', 1, 1);

	--sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('galck', 'cafeteria/galck',-300, 1000);
	scaleObject('galck',0.45, 0.45);	
	makeAnimatedLuaSprite('jotsuke espectador', 'cafeteria/jotsuke espectador',0, 930);
	scaleObject('jotsuke espectador',0.45, 0.45);
	setPropertyLuaSprite('jotsuke espectador', 'flipX', true);
	makeAnimatedLuaSprite('sussus espectador', 'cafeteria/sussus espectador',150, 1200);
	scaleObject('sussus espectador',0.6, 0.6);
	makeAnimatedLuaSprite('joluxz', 'cafeteria/joluxz',1260, 700);
	scaleObject('joluxz',0.35, 0.35);
	makeAnimatedLuaSprite('amarillo', 'cafeteria/amarillo',1580, 850);
	scaleObject('amarillo',0.4, 0.4);
	makeAnimatedLuaSprite('orange', 'cafeteria/orange',1300, 1200);
	scaleObject('orange',0.6, 0.6);
	makeAnimatedLuaSprite('globo', 'cafeteria/globo',-1300, 20);
	scaleObject('globo',1, 1);
	makeAnimatedLuaSprite('michael', 'cafeteria/michael',200,650);
	scaleObject('michael',0.4, 0.4);
	end

	addLuaSprite('espacio', false);
	addLuaSprite('planetas', false);
	addLuaSprite('star', false)
	addAnimationByPrefix('star', 'idle', 'star idle', 12, true);
	addLuaSprite('fondo', false);
	addLuaSprite('michael', false)
	addAnimationByPrefix('michael', 'idle', 'michael idle', 12, false);
	addLuaSprite('joluxz', false)
	addAnimationByPrefix('joluxz', 'idle', 'joluxz idle', 12, false);
	addLuaSprite('mesas', false);
	addLuaSprite('galck', true)
	addAnimationByPrefix('galck', 'idle', 'galck idle', 12, false);
	addLuaSprite('jotsuke espectador', false)
	addAnimationByPrefix('jotsuke espectador', 'idle', 'jotsuke espectador idle', 12, false);

	addLuaSprite('sussus espectador', true)
	addAnimationByPrefix('sussus espectador', 'idle', 'sussus espectador idle', 12, false);

	addLuaSprite('amarillo', false)
	addAnimationByPrefix('amarillo', 'idle', 'amarillo idle', 12, false);
	addLuaSprite('orange', true)
	addAnimationByPrefix('orange', 'idle', 'orange idle', 12, false);
	addLuaSprite('globo', true)
	addAnimationByPrefix('globo', 'idle', 'globo idle', 12, true);
end


function onStepHit()

    if curStep == 128 then 
	setProperty('globo.visible',true)
	doTweenX('globo.x','globo', 7500, 20, 'sineout')
	end

	if curStep == 319 then
	setPropertyLuaSprite('globo', 'flipX', true);
	doTweenX('globo.x','globo', -1500, 15, 'sineout')
    end

	if curStep == 813 then 
	setPropertyLuaSprite('globo', 'flipX', false);
	doTweenX('globo.x','globo', 7500, 20, 'sineout')
	end

	if curStep == 1151 then 
	setPropertyLuaSprite('globo', 'flipX', true);
	doTweenX('globo.x','globo', -1500, 20, 'sineout')
	end

	if curStep == 1407 then 
	setPropertyLuaSprite('globo', 'flipX', false);
	doTweenX('globo.x','globo', 7500, 20, 'sineout')
	end

	if curStep == 1897 then 
	setPropertyLuaSprite('globo', 'flipX', true);
	doTweenX('globo.x','globo', -1500, 20, 'sineout')
	end
	if curStep == 2576 then 
	setPropertyLuaSprite('globo', 'flipX', false);
	doTweenX('globo.x','globo', 7500, 40, 'sineout')
	end
end

function onBeatHit()
 if curBeat % 2== 0 then
 objectPlayAnimation('galck', 'idle', false);
 objectPlayAnimation('michael', 'idle', false);
 objectPlayAnimation('orange', 'idle', false);
 objectPlayAnimation('jotsuke espectador', 'idle', false);
 objectPlayAnimation('joluxz', 'idle', false);
 objectPlayAnimation('amarillo', 'idle', false);
 objectPlayAnimation('sussus espectador', 'idle', false);
end
end
