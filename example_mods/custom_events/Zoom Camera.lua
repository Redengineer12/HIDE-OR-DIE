-- Event notes hooks
function onEvent(name, value2)
	if name == 'Zoom Camera' then
		setProperty('defaultCamZoom', value2);
	end
end