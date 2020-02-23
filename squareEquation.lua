A = 1
B = 5
C = 6
Delta = (B * B - (4 * A * C))

if (A ~= 0) then
    if (Delta < 0) then
        print("The equation has no solution!")
    elseif (Delta == 0) then
        local x = (-B / (2 * A))
        print("x = " .. x)
    else
        Delta = math.sqrt(Delta)
        if (B > 0) then
            local x1 = (-B + Delta) / (2 * A)
            local x2 = C / (A * x1)
            print("x1 = " .. x1 .. ", x2 = " .. x2)
        else
            local x2 = (-B + Delta) / (2 * A)
            local x1 = C / (A * x2)
            print("x1 = " .. x1 .. ", x2 = " .. x2)
        end
    end
else
    print("This is not a square equation!")
end
