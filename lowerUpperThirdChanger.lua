ImputString = "Example string"

function LowerUpperThirdChange (workString)
    local result = ""
    local counter = 0
    for i = 1, #workString do
        local indexValue = workString:sub(i,i)
        counter = counter + 1
        if (counter%3 == 0) then
            if (string.match(indexValue, "%u") ~= nil) then 
                result = result .. (string.lower(indexValue))
            elseif (string.match(indexValue, "%l") ~= nil) then
                result = result .. (string.upper(indexValue))
            else
                result = result .. indexValue
            end
        else
            result = result .. indexValue
        end       
    end
    print(result)
end

LowerUpperThirdChange (ImputString)
