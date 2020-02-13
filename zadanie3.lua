WorkTable = {-4, 2, 4, -6, -2}

NegativeSum = 0
NegativeCount = 0
PositiveMultiplication = 0

for index = 1, #WorkTable do
    if (WorkTable[index] < 0) then
        NegativeSum = NegativeSum +WorkTable[index]
        NegativeCount = NegativeCount + 1
    elseif (WorkTable[index] > 0) then
        if (PositiveMultiplication == 0) then
            PositiveMultiplication =WorkTable[index]
        else
            PositiveMultiplication = PositiveMultiplication *WorkTable[index]
        end
    end
end

print("The average of negative numbers is: " .. (NegativeSum/NegativeCount))
print("The product of positive numbers is: " .. PositiveMultiplication)

