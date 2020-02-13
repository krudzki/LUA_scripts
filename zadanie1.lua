ImputString = "786fdsy78ye7c78rs30"

function GetSecondhighestNumbers (workString)
    HighestNumbers = {
        first = 0,
        second = 0
    }
    Count = 0

    for i = 1, #workString do
        local indexValue = workString:sub(i,i)
        local indexValueByNumber = tonumber(indexValue)
        if ((indexValueByNumber ~= nil) and (indexValueByNumber > HighestNumbers.first)) then
            if (indexValueByNumber > HighestNumbers.first) then
                HighestNumbers.second = HighestNumbers.first
                HighestNumbers.first = indexValueByNumber
                Count = Count + 1
            elseif ((indexValueByNumber < HighestNumbers.first)) then
                HighestNumbers.second = indexValueByNumber
                Count = Count + 1
            end       
        end
    end
    if (Count > 1) then
        print("Second highest number in string: " .. HighestNumbers.second)
    else
        print("The string does not contain the second highest number!")
    end
end

GetSecondhighestNumbers(ImputString)