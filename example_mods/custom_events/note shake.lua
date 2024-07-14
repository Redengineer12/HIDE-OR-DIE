-- Definimos una variable para controlar si el evento está activo o no.
local fadeActive = false

-- Definimos la duración del desvanecimiento.
local fadeDuration = 1.0  -- Puedes cambiar esto al valor que desees.

function onEvent(name)
    if name == 'fadeEvent' then
        fadeEvent(value)
    end
end

-- Función para activar o desactivar el evento de desvanecimiento.
function fadeEvent(value)
    if value == 1 then
        fadeActive = true
        -- Aquí es donde activarías el desvanecimiento.
        -- Por ejemplo, podrías usar una función como esta:
        makeLuaSprite('blackFade', 'blackFade', -600, -400)
        setLuaSpriteScrollFactor('blackFade', 0, 0)
        setLuaSpriteScale('blackFade', 10, 10)
        tweenLuaSpriteAlpha('blackFade', fadeDuration, 1)
    elseif value == 2 then
        fadeActive = false
        -- Aquí es donde desactivarías el desvanecimiento.
        -- Por ejemplo, podrías usar una función como esta:
        tweenLuaSpriteAlpha('blackFade', fadeDuration, 0)
    end
end
