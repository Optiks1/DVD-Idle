showChat(false)
local screenW,screenH = guiGetScreenSize()
local imgSizeW,imgSizeH = 150,68

local leftX,leftY = math.random(0,screenW/2),math.random(0,screenH)
local leftSpeed = 5
local moveLeftX,moveLeftY = leftSpeed,leftSpeed
local leftColor = tocolor(255,255,255,255)

local rightX,rightY = math.random(screenW/2,screenW),math.random(0,screenH)
local rightSpeed = 5
local moveLeftX,moveLeftY = rightSpeed,rightSpeed
local rightColor = tocolor(255,255,255,255)

function randomazer()
	return tocolor(math.random(0,255),math.random(0,255),math.random(0,255),255)
end

addEventHandler("onClientRender",root,function ()
	dxDrawRectangle(0,0,screenW/2,screenH,tocolor(20,0,0,255))
	leftX = leftX + moveLeftX
	if leftX > screenW/2 - imgSizeW then
		leftX = screenW/2 - imgSizeW
		moveLeftX = -leftSpeed
		leftColor = randomazer()
	elseif leftX < 0 then
		leftX = 0
		moveLeftX = leftSpeed
		leftColor = randomazer()
	end
	leftY = leftY + moveLeftY
	if leftY > screenH - imgSizeH then
		leftY = screenH - imgSizeH
		moveLeftY = -leftSpeed
		leftColor = randomazer()
	elseif leftY < 0 then
		leftY = 0
		moveLeftY = leftSpeed
		leftColor = randomazer()
	end
	dxDrawImage(leftX,leftY,imgSizeW,imgSizeH,"dvd.png",0,0,0,leftColor)
	
	dxDrawRectangle(screenW/2,0,screenW/2,screenH,tocolor(0,0,20,255))
	rightX = rightX + moveLeftX
	if rightX > screenW - imgSizeW then
		rightX = screenW - imgSizeW
		moveLeftX = -rightSpeed
		rightColor = randomazer()
	elseif rightX < screenW/2 then
		rightX = screenW/2
		moveLeftX = rightSpeed
		rightColor = randomazer()
	end
	rightY = rightY + moveLeftY
	if rightY > screenH - imgSizeH then
		rightY = screenH - imgSizeH
		moveLeftY = -rightSpeed
		rightColor = randomazer()
	elseif rightY < 0 then
		rightY = 0
		moveLeftY = rightSpeed
		rightColor = randomazer()
	end
	dxDrawImage(rightX,rightY,imgSizeW,imgSizeH,"dvd.png",0,0,0,rightColor)
end)
