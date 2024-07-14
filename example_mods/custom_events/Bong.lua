function onEvent(name,value1,value2)
if name == 'Bong' then
health = getProperty('health')
setProperty('health', health - 0.23);
	end
end