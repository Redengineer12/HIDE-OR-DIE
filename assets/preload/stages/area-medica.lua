function onCreate()
	-- background shit
	makeLuaSprite('area-medica', 'area-medica/area-medica', -1000, -600);
	setLuaSpriteScrollFactor('area-medica', 1, 1);
	scaleObject('area-medica', 1.6, 1.6);

	
	makeLuaSprite('sombra-pantalla', 'area-medica/sombra-pantalla', -2000, -400);
	setLuaSpriteScrollFactor('sombra-pantalla', 0.9, 0.9);
	scaleObject('sombra-pantalla', 2, 2);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', 999999, 99999);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 99999, 99999);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', 99999, 99999);
		setLuaSpriteScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('area-medica', false);
	addLuaSprite('sombra-pantalla', true);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end