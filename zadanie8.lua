CreatedTab = {}
SumEvenRowsAndColumns = 0

for i = 1, 5 do
    CreatedTab[i] = {}
    for j = 1, 5 do
        CreatedTab[i][j] = math.random(-1,11)
        if ((i%2 == 0) and (j%2 == 0)) then
            SumEvenRowsAndColumns = SumEvenRowsAndColumns + CreatedTab[i][j]
        end 
    end
end

--[[  -- check values in each rows/columns and true/false finish result
for i=1, 5 do
    for j=1, 5 do
        print("I: " .. i .. ", J: " .. j .. ", value: " .. createdTab[i][j])
    end
end
]]--

print("Sum elements with even rows and columns: " .. SumEvenRowsAndColumns)