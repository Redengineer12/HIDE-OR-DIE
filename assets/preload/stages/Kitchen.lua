function onCreate()
    --background shit
	makeLuaSprite('kitchen', 'kitchen/kitchen', -300, 0);
	setLuaSpriteScrollFactor('kitchen', 1, 1);
	scaleObject('kitchen', 1, 1);

	--sprites that only load if Low Quality is turned off
	if not lowQuality then
	end

	addLuaSprite('kitchen', false);
end
