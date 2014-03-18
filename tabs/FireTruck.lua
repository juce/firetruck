FireTruck = class()

function FireTruck:init(x, y)
    -- you can accept and set parameters here
    self.x = x
    self.y = y
    self.imagePack = readImage("Documents:fire pack")
    self.body = self.imagePack:copy(50, 125, 300, 190)
    self.leftTire = self.imagePack:copy(70, 38, 85, 75)
    self.rightTire = self.imagePack:copy(238, 38, 83, 75)
    self.angle = 0
end

function FireTruck:draw()
    -- Codea does not automatically call this method
    pushMatrix()
    translate(self.x, self.y)
    sprite(self.body)
    translate(-87, -95)
    rotate(self.angle)
    sprite(self.leftTire)
    rotate(-self.angle)
    translate(164, 0)
    rotate(self.angle)
    sprite(self.rightTire)
    popMatrix()
    
    -- turn the tires
    self.angle = self.angle + 2
    -- move the truck
    self.x = self.x + -2
    -- reappear on the other side
    if self.x < -200 then
        self.x = WIDTH + 200
    end
end

function FireTruck:touched(touch)
    -- Codea does not automatically call this method
    if touch.state == BEGAN and self.x - 150 < touch.x and touch.x < self.x + 150 then
        if self.y - 95 < touch.y and touch.y < self.y + 95 then
            sound(DATA, "ZgBARgBNQEtAQEBAAAAAAM4uDj/cOi4+QABAcUBTQEBAQEBA")
        end
    end
end
