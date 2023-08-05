function onEvent(n,v1,v2)




	if n == 'negro camaraxdddd' then

	   makeLuaSprite('negroxddddd', '', 0, 0);
        makeGraphic('negroxddddd',1280,720,'000000')
	      addLuaSprite('negroxddddd', true);
		  setObjectCamera('negroxddddd', 'camHUD')
	      setLuaSpriteScrollFactor('negroxddddd',0,0)
	      setProperty('negroxddddd.scale.x',2)
	      setProperty('negroxddddd.scale.y',2)
	      setProperty('negroxddddd.alpha',0)
		setProperty('negroxddddd.alpha',1)
		doTweenAlpha('flTw','negroxddddd',0,v1,'linear')
	end



end