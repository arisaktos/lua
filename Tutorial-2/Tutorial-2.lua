--[[
for startValue, endValue, stepValue do
-- code to iterate
end
--]]

--numeric for loop

-- starts with 1, then 1 is added to it until it reaches 10.
-- if you dont supply stepValue it will be by default 1
for i=1, 10, 1 do
print(i);
end

for i=10, 1, -1 do
    print(i);
end


local tbl ={
    --index part
    "hello", 50, 40, 30, 20, "bye",
    
    --hash table
    ["hashValue1"] = 100,
    ["hashValue2"] = 200,
    ["hashValue3"] = 300,
    ["hashValue4"] = 400,
    hashValue_5 = 500,
    
}

--generic for loop
--next iterates through both index and hash part of the table, but the hash table values most of the time will not come up with the order you expect, hash tables are never sorted in order by default 

--instead of next you can use ipairs which will only print the index part of the table, 

for key, value in next, tbl do
    print(key .. " : " .. value);
end

--you can also use pair instead of next, it means the same but the way you write it is a bit different

for key, value in pairs(tbl) do
    print(key .. " : " .. value);
end


--while loop
local i=0;

while(i<=10) do
    i = i+1;
    print("hi");
end

--if you want while loop to execute at least once you use repear-until

repeat 
    i=i+1;
    print(i);
until(i<10) 

--you can use break in code too

for i=1, 10 do
    if(i==5) then
        break;
    end
    print(i);
end