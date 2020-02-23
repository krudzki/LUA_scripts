local inputNIP = "NIP value"
local weightNumberInNIP = {6, 5, 7, 2, 3, 4, 5, 6, 7}
local sum = 0
local controlNumber = 0

inputNIP = inputNIP:gsub("[%%%]%^%s%-$().[*+?]", "")
controlNumber = tonumber(string.sub(inputNIP, 10))


if ((tonumber(inputNIP) == nil) or (#inputNIP ~= 10)) then
    return false
else
    for i = 1, #inputNIP-1 do
        sum = sum + (tonumber(string.sub( inputNIP, i, i )) * weightNumberInNIP[i])
    end
    return ((sum % 11 == controlNumber))
end