function onEvent(name, value1, value2) 
	if name == 'subtitules2' then
        makeLuaText('texto', value1, 600, 400, getPropertyFromGroup('opponentStrums', 0, 'y'))
        addLuaText('texto')
        setObjectCamera('texto', 'camOther');
        setTextSize('texto', 42) 
        screenCenter('texto', 'x')
        runTimer('adios', value2)   
    end
end
function onTimerCompleted(tag)
    if tag == 'adios' then
        doTweenAlpha('awerf', 'texto', 0, 0.6, 'linear')
    end
end
function onTweenCompleted(tag)
    if tag == 'awerf' then
        removeLuaText('texto', false)
    end
end