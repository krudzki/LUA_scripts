local inputString = "numerPesel"

local weightNumberInPESEL = {1, 3, 7, 9, 1, 3, 7, 9, 1, 3}
local sum = 0
local controlNumber = tonumber(string.sub(inputString, 11))

if ((tonumber(inputString) == false) or (#inputString ~= 11)) then
    return false
else
    for i = 1, #inputString-1 do
        sum = sum + (tonumber(string.sub( inputString, i, i )) * weightNumberInPESEL[i])
    end
    
    sum = sum % 10
    return ((10 - sum) == controlNumber) 
end




