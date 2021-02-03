ScreenHeight = love.graphics.getHeight()
ScreenWidth = love.graphics.getWidth()



backGreen = {}

backGreen.Sprite = love.graphics.newImage("Background/Backgreen.png")
backGreen.Width = ScreenWidth
backGreen.Height = ScreenHeight
backGreen.PosX = 0
backGreen.Move = 0
backGreen.ScaleW = 3
backGreen.ScaleH = 3.8


backBat = {}

backBat.Sprite = love.graphics.newImage("Background/BackBat.png")
backBat.Hauteur = backBat.Sprite:getHeight()
backBat.Width = ScreenWidth
backBat.Height = ScreenHeight
backBat.PosX = 0
backBat.PosY = ScreenHeight
backBat.Move = 0
backBat.ScaleW = 3
backBat.ScaleH = 2.8
backBat.OY = backBat.Hauteur

backRuin = {}

backRuin.Sprite = love.graphics.newImage("Background/BackRuin.png")
backRuin.Hauteur = backRuin.Sprite:getHeight()
backRuin.Width = ScreenWidth
backRuin.Height = ScreenHeight
backRuin.PosX = 0
backRuin.PosY = ScreenHeight
backRuin.Move = 0
backRuin.ScaleW = 3
backRuin.ScaleH = 2.8
backRuin.OY = backRuin.Hauteur

backPil = {}

backPil.Sprite = love.graphics.newImage("Background/BackPil.png")
backPil.Hauteur = backPil.Sprite:getHeight()
backPil.Width = ScreenWidth
backPil.Height = ScreenHeight
backPil.PosX = 0
backPil.PosY = ScreenHeight
backPil.Move = 0
backPil.ScaleW = 3
backPil.ScaleH = 2.8
backPil.OY = backPil.Hauteur









function love.load()
  
  
  
end


function love.update(dt)
  -- Fond vert
  backGreen.PosX = backGreen.PosX - 100 *dt
  
    if backGreen.PosX <= -ScreenWidth then
    backGreen.PosX = 0
  end
  
   -- Fond Pillar
  backPil.PosX = backPil.PosX - 100.5 *dt
  
    if backPil.PosX <= -ScreenWidth then
    backPil.PosX = 0
  end
  
    -- Ruine 2 
  
      backRuin.PosX = backRuin.PosX - 300.2 *dt
  
    if backRuin.PosX <= -ScreenWidth then
    backRuin.PosX = 0
  end
  
  -- Bâtiments
  
    backBat.PosX = backBat.PosX - 500.5 *dt
  
    if backBat.PosX <= -ScreenWidth then
    backBat.PosX = 0
   end
  

  
  
  
  
end




function love.draw()

  
  
  --élement fond vert 
love.graphics.draw(backGreen.Sprite,backGreen.PosX,0,0,backGreen.ScaleW,backGreen.ScaleH)
love.graphics.draw(backGreen.Sprite,backGreen.PosX + ScreenWidth,0,0,3,3.8)

  --Ruine
love.graphics.draw(backPil.Sprite,backPil.PosX,backPil.PosY,0,backPil.ScaleW,backPil.ScaleH,0,backPil.OY)
love.graphics.draw(backPil.Sprite,backPil.PosX + ScreenWidth,backPil.PosY,0,backPil.ScaleW,backPil.ScaleH,0,backPil.OY)

  --Ruine
love.graphics.draw(backRuin.Sprite,backRuin.PosX,backRuin.PosY,0,backRuin.ScaleW,backRuin.ScaleH,0,backRuin.OY)
love.graphics.draw(backRuin.Sprite,backRuin.PosX + ScreenWidth,backRuin.PosY,0,backRuin.ScaleW,backRuin.ScaleH,0,backRuin.OY)

  --Batiment
love.graphics.draw(backBat.Sprite,backBat.PosX,backBat.PosY,0,backBat.ScaleW,backBat.ScaleH,0,backBat.OY)
love.graphics.draw(backBat.Sprite,backBat.PosX + ScreenWidth,backBat.PosY,0,backBat.ScaleW,backBat.ScaleH,0,backBat.OY)
  

  
  love.graphics.print("position x = "..backBat.PosX)

end