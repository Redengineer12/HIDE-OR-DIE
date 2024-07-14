function onCreate()
	-- background shit
	makeLuaSprite('cafeteriaso', 'cafeteriaso/cafeteriaso', -1000, -600);
	setLuaSpriteScrollFactor('cafeteria2', 1, 1);
	scaleObject('cafeteria2', 1.6, 1.6);
	
	makeLuaSprite('sombra-pantalla', 'area-medica/sombra-pantalla', 0, -200);
	setLuaSpriteScrollFactor('sombra-pantalla', 0.9, 0.9);
	scaleObject('sombra-pantalla', 1.3, 1.05);


	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('pasillo', 'pasillo/pasillo',150, 700);
	scaleObject('pasillo',3, 3);
	makeAnimatedLuaSprite('piernasjeff', 'pasillo/piernasjeff',551, 855);
	scaleObject('piernasjeff',0.801, 0.78);
	end

	addLuaSprite('pasillo', false)
	addAnimationByPrefix('pasillo', 'idle', 'pasillo idle', 16, true);
	addLuaSprite('piernasjeff', false)
	addAnimationByPrefix('piernasjeff', 'idle', 'piernasjeff idle', 22, true);
	addLuaSprite('sombra-pantalla', true);
	end
	function onBeatHit()
	if curBeat % 4== 0 then
	objectPlayAnimation('piernasjeff', 'idle', false);
	end
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end