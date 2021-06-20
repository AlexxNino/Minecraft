turtle.refuel() --just refuel anytime its turned on

--get range you want to strip mine
--local x,y,z = {...}

turtle.digDown()
turtle.down()

function Miner(x,y,z)
    counter = 0
    for j=y,1,-1 do -- y is for the depth
        xer = x
        for i=x,1,-1 do --repeats the z an x amount of times
            for k=z-1,1,-1 do --dig forward in the z direction
                turtle.dig()
                turtle.forward()
            end

            --zig zag
            if xer > 1 then
                --print(xer , counter)
                if counter%2 == 0 then
                    turtle.turnLeft()
                    turtle.dig()
                    turtle.forward()
                    turtle.turnLeft()
                    counter = counter+1
                elseif counter%2 == 1 then
                    turtle.turnRight()
                    turtle.dig()
                    turtle.forward()
                    turtle.turnRight()
                    counter = counter+1
                end
            end
            xer = xer - 1
            
        end

        --turn around 180
        turtle.turnLeft()
        turtle.turnLeft()

        --go into the next layer
        turtle.digDown()
        turtle.down()

    end
end

Miner(2,2,2) --change this for x,y,z (y=is height) x,z is length/width

