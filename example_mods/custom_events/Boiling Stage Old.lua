function onEvent(name, value1, value2)
if name == "Boiling Stage Old" then
if value1 == '1' then
	setProperty('bgAnim.alpha', 0.001);
	setProperty('plataforma.alpha', 0.001);
	setProperty('lavaOld.alpha', 1);
	setProperty('edge.alpha', 1);
	setProperty('plataformaOld.alpha', 1);
	cameraFlash('camOther', '460028', 1.5, false)
	end
if value1 == '0' then
	setProperty('bgAnim.alpha', 1);
	setProperty('plataforma.alpha', 1);
	setProperty('lavaOld.alpha', 0.001);
	setProperty('edge.alpha', 0.001);
	setProperty('plataformaOld.alpha', 0.001);
	cameraFlash('camOther', '460028', 1.5, false)
	end
end
end