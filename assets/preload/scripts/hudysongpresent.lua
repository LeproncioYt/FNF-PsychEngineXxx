
function onCreatePost()

	image='hud'
	scalex='1'
	scaley='1'
	x=85
	y=95
if songName=='my-spot' then
	image='hud-my-spot'
	scalex='0.960'
	scaley='0.960'
	x=85
	y=95
end	

	makeLuaSprite('Health', image,getProperty('healthBar.x')-x,getProperty('healthBar.y')-y)
	setObjectCamera('Health', 'hud')
	addLuaSprite('Health', true)
	setObjectOrder('Health', getObjectOrder('healthBar') + 1)
	setProperty('healthBar.visible', true)
	setProperty('healthBar.scale.x',1.02)
	setProperty('healthBar.scale.x',1.02)
	setProperty('healthBarBG.scale.x',1.02)
	setProperty('healthBarBG.scale.y',1.02)
	setProperty('Health.scale.x',scalex)
	setProperty('Health.scale.y',scaley)

	makeLuaSprite('oscuro', null, 0, 0)
	makeGraphic('oscuro', 1400, 1100, '000000')
	setObjectCamera('oscuro', 'camOther')
    setProperty('oscuro.alpha',0)
	addLuaSprite('oscuro', true)

    makeLuaSprite('UpBarr', null, 0, -500)
	makeGraphic('UpBarr', 1400, 300, '000000')
	setObjectCamera('UpBarr', 'camOther')
	addLuaSprite('UpBarr', true)

    makeLuaSprite('DownBarr', null, 0, 900)
	makeGraphic('DownBarr', 1400, 300, '000000')
	setObjectCamera('DownBarr', 'camOther')
	addLuaSprite('DownBarr', true)
   
    color ='FFFFFF'
    if songName =='my-new-plaything' then
        color ='881A1A'
        bX='By :The leon'
    end 
    if songName =='too-slow' then
        color ='881A1A'
        bX='By :Samfenix231_YT'
    end 
    if songName =='our-new-plaything-old' then
        color ='881A1A'
        bX='By :CoffeeDrummer'
    end 
    if songName =='my-spot' then
        color ='FFFFFF'
        bX='By :The Laggin Man'
    end  

    if songName =='wooden-hand' then
        color ='881A1A'
        bX='By :CoffeeDrummer'
    end  
    makeLuaSprite('color', null, -500, 100)
	makeGraphic('color', 300, 100, color)
	setObjectCamera('color', 'camHud')
	addLuaSprite('color', true)

    makeLuaSprite('black', null, -500, 100)
	makeGraphic('black', 300, 100, '000000')
	setObjectCamera('black', 'camHud')
	addLuaSprite('black', true)

    -- se viene lo epico
    makeLuaText('SongName', songName, 0, -500,110)
    setTextSize('SongName', 20)
    setTextBorder('SongName', 2, '000000')
    addLuaText('SongName')
    setObjectCamera('SongName', 'camHud')

    makeLuaText('SongbX', bX, 0, -500,150)
    setTextSize('SongbX', 20)
    setTextBorder('SongbX', 2, '000000')
    addLuaText('SongbX')
    setObjectCamera('SongbX', 'camHud')
	
end
function onSongStart()


    doTweenX('1a', 'color', 50, 0.7, 'CircInOut')
    doTweenX('2b', 'black', 0, 0.8, 'CircInOut')
    doTweenX('3c', 'SongName', 0, 1, 'CircInOut')
    doTweenX('4d', 'SongbX', 0, 1, 'CircInOut')  
    runTimer('ekisde',4)
end
function onTimerCompleted(tag)
    if tag =='ekisde' then
        doTweenX('hola1', 'color', -900, 0.7, 'CircInOut')
        doTweenX('hola2', 'black', -900, 0.8, 'CircInOut')
        doTweenX('hola3', 'SongName', -900, 1, 'CircInOut')
        doTweenX('hola4', 'SongbX', -500, 0.7, 'CircInOut')  
    end
end        

function onTweenCompleted(tag)
    if tag=='hola1' and tag =='hola2' and tag == 'hola3' and tag == 'hola4' then
        removeLuaSprite('color', true) 
        removeLuaSprite('black', true) 
        removeLuaText('SongName', true)
        removeluaText('SongbX', true)  
    end        
end        
function onUpdate(elapsed)
    if songName=='my-new-plaything' then
        
       if curStep==1768 then
        setProperty('Health.alpha',0)
       end 
       if curStep==2105 then
        setProperty('Health.alpha',1)
       end 
       if curStep==2487 then
        setProperty('Health.alpha',0)
       end
        
    end    
end    