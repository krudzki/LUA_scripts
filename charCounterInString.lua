ImputString = "Other example string 3xZZZ"


function CounterACGJZ (workString)
    local countTable = {
        A = 0, 
        C = 0, 
        G = 0, 
        J = 0, 
        Z = 0
    }
    for i = 1, #workString do
        local indexValue = workString:sub(i,i)
        if ((indexValue == "A") or (indexValue == "a")) then
            countTable.A = countTable.A + 1
        elseif ((indexValue == "C") or (indexValue == "c")) then
            countTable.C = countTable.C + 1
        elseif ((indexValue == "G") or (indexValue == "g")) then
            countTable.G = countTable.G + 1
        elseif ((indexValue == "J") or (indexValue == "j")) then
            countTable.J = countTable.J + 1
        elseif ((indexValue == "Z") or (indexValue == "z")) then
            countTable.Z = countTable.Z + 1
        end           
    end
    print("Number of selected letters in a sequence: \nA = " .. countTable.A .. "\nC = " .. countTable.C .. "\nG = " .. countTable.G .. "\nJ = " .. countTable.J .. "\nZ = " .. countTable.Z)
end

CounterACGJZ (ImputString)
