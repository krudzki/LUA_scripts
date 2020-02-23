InputTab = {
    [1] = {0.12, 0.23, 0.17, 0.89, 1.00},
    [2] = {0.83, 0.25, 0.99, 0.46, 0.46},
    [3] = {0.21, 0.00, 0.63, 0.15, 0.71},
    [4] = {0.19, 0.04, 0.23, 0.38, 0.30},
    [5] = {0.38, 0.93, 0.11, 0.53, 0.06}
}

function CalculateAverageSmallestDiagonalValues (table)
    local minValDiagonal = {
        first = nil,
        second = nil
    }
    local topVal = {
        first = 0,
        second = 0,
        third = 0
    }
    local tmp1 = 1
    local tmp2 = #table

    for i = 1, #table do
        for j = 1, #table[1] do
            if ((i == j) and ((minValDiagonal.first == nil) or (table[i][j] < minValDiagonal.first))) then
                minValDiagonal.first = table[i][j]           
            end
            if ((i == tmp1) and (j == tmp2)) then
                tmp1 = tmp1 + 1                   
                tmp2 = tmp2 - 1
                if ((minValDiagonal.second == nil) or (table[i][j] < minValDiagonal.second)) then
                    minValDiagonal.second = table[i][j]                    
                end
            end
            if (table[i][j] > topVal.second) then
                topVal.third = topVal.second
                if (table[i][j] > topVal.first) then
                    topVal.second = topVal.first
                    topVal.first = table[i][j]
                else
                    topVal.second = table[i][j]
                end
            elseif (table[i][j] > topVal.third) then
                topVal.third = table[i][j]         
            end 
        end
    end
    print("Third biggest value in inputTab: " .. topVal.third)
    return ((minValDiagonal.first + minValDiagonal.second)/2)
end

print("Average of smallest values in diagonals: " .. CalculateAverageSmallestDiagonalValues(InputTab))
