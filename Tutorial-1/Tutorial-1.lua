print("Hello " .. UnitName("player") .. " " .. UnitLevel("player")); -- returns player name and level in game console

local function counter(a,b,c)
    
    a = a or 15; -- if a is not stated it's 15
    b = b or 10; -- if b is not stated it's 10
    c = c or 5; --  if c is not stated it's 5
    
    local ans = a*b+c;
    
    return ans;
end

local rtnValue = counter(5,2,10);
print(rtnValue);


local function anotherCounter(...) --any number of arguments
--   local a,b,c = ...; -- first 3 arguments are stored in variables
--    local f,g,h,i,j = select(7,...); -- assigns from the 7th element from the list of arguments
--  # hastag means lenght of table, {} means table    
    
    local tbl = {...};
    print(#tbl);
    
 --   local ans = (a*b) + c;
 --   return ans;
end

local options = {5,4,3,2,1};
local b = options[2];

--[[

Table = Array + Hash Table

options[10] = 5; -- asigned value 5 at location 10, table is only 5 elements long so everything from 6-9 is nill

using keys
option["size"] =10 --this will be stored in the hash table of the array, you can't get to it by selecting element of table 
Array = Index and Value Pairs
Hash Table = Key and Value Pairs

]]--


local something = {
    ["level"]=UnitLevel("player"),
    ["xOffset"]=10,
    ["yOffset"]=10,
    ["color"]={r=0.5, g=0.2, b=0.6, a=1},
    class = "Warrior",
}

-- keys don't count to the lenght of the table

print(something["level"]);
print(something.class);

-- you can have whatever you want inside a table: value, other tables, strings, functions...

local myFunction ={
    push = function(self, arg)
        local n = #self; -- takes the lenght of the table and assigns is to variable n
        self[n+1] = arg; -- finds the next free space in the table and assigns the arg to that free space
    end,
    
    pop = function(self)
        local n = #self;
        if(n>0) then
            local rtn = self[n];
            self[n] = nil;
            return rtn;
        end
    end,
}

--[[ self referrencial variable, we need to do this because has functions inside
print(myFunction.pop(myFunction)); --nil
to make it look nicer we can use:
]]--

print(myFunction:pop()); -- null because table for now is empty

myFunction:push(50);
myFunction:push(4);
myFunction:push(100);
myFunction:push("hello");
myFunction:push({2,3,4,5,6});


print(myFunction:pop());  -- table: 0000050GBAK504 - memory address where table is stored
print(myFunction:pop()); --hello
print(myFunction:pop()); --100
print(myFunction:pop()); --4
print(myFunction:pop()); --50