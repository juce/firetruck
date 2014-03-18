-- Fire Truck

-- Use this function to perform your initial setup
function setup()
    print("Touch the truck to hear sirens!")
    truck = FireTruck(WIDTH/2, HEIGHT/2)
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(148, 164, 209, 255)

    -- This sets the line thickness
    strokeWidth(5)

    -- Do your drawing here
    truck:draw()
end

function touched(touch)
    truck:touched(touch, x, y)
end

