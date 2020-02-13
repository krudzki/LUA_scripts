ImputString = "asdf23tsdcs3cz2'"

function SaveOutputString (string) 
    OutputString = string
end

function ReturnCountNumbersInString (workString)
    local numCount = 0
    local outputString = ""

    for i = 1, #workString do
        local indexValue = workString:sub(i,i)
        local indexValueByNumber = tonumber(indexValue)
        if (indexValueByNumber ~= nil) then
            numCount = numCount + 1
        else
            outputString = outputString .. indexValue   
        end    
    end
    return numCount, SaveOutputString(outputString)
end

print("Numbers in string: " .. ReturnCountNumbersInString(ImputString))
print("String without numbers: " .. OutputString)