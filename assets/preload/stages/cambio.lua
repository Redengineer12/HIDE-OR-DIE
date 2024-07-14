function onCreate()
	-- background shit

	makeLuaSprite('vintage', 'cafeteriarojo/vintage', -1000, -600);
	setLuaSpriteScrollFactor('blue', 1, 1);
	scaleObject('vintage', 1.6, 1.6);
	
	makeLuaSprite('cafeteriaog', 'cafeteriarojo/cafeteriaog', -1000, -600);
	setLuaSpriteScrollFactor('cafeteriaog', 1, 1);
	scaleObject('cafeteriaog', 1.6, 1.6);
	
	makeLuaSprite('blue', 'cafeteriarojo/blue', -1000, -600);
	setLuaSpriteScrollFactor('blue', 1, 1);
	scaleObject('blue', 1, 1);
	
	makeLuaSprite('cafeteriaso', 'cafeteriaso/cafeteriaso', -1000, -600);
	setLuaSpriteScrollFactor('cafeteria2', 1, 1);
	scaleObject('cafeteriaso', 1.6, 1.6);
	
	makeLuaSprite('cafeteria2', 'cafeteria2/cafeteria2', -1000, -600);
	setLuaSpriteScrollFactor('cafeteria2', 1, 1);
	scaleObject('cafeteria2', 1.6, 1.6);
	
	addLuaSprite('cafeteriaso', false);
	addLuaSprite('cafeteria2', false);
	addLuaSprite('cafeteriaog', false);
	addLuaSprite('blue', true);
	addLuaSprite('vintage', true);


	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end