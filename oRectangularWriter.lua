RectangularLength = io.read("*n")
ORow = ""

for index = 0, RectangularLength do  
    if (ORow ~= "") then
        print(ORow)
    end
    ORow = ""
    for amount = 0, index do
        ORow = ORow .. "o "
        
    end
end
