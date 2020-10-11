--print("hello world!");

--库函数 type 用于以字符串形式返回给定值的类型。
--[[
print("demo2")
print(type("hello world"))
print(type(print))
print(type(type))
print(type(true))
print(type(nil))
print(type(type(X)))

--]]

--[[
--print("demo3")
tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

--]]

--[[
tab1 = { key1 = "vall", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end 

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end


--]]

--[[
--print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 到为false")
end


--
--]]

--[[
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/"菜鸟教程</a>
</body>
</html>
]]

--print(html)


--]]

--[[
--print("2" + 6)
print("2" + "6")
print("-2e2" * "6")
--print("error" + 1)


--]]

--[[
--a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end


--]]

--[[
--local tb1 = { "apple", "pear", "orange", "grape" }
for k, v in pairs(tb1) do
    print(k .. " : " .. v)
end


--]]

--[[
--a3 = {}
for i = 1, 10 do 
    a3[i] = i
end

a3["key"] = "val"
print(a3["key"])
print(a3["none"])

for k, v in pairs(a3) do
    print(k .. " : "  .. v)
end


--]]

--[[
--function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n -1)
    end
end

print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))


--]]

--[[
--function testFun(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end

tab = { key1 = "val1", key2 = "val2" }
testFun(tab,
function(key, val) -- 匿名函数
    return key.."="..val;
end
)


--]]

--[[
--a = 5
local b = 5

function joke()
    c = 5
    local d = 6
end

joke()
print(c, d)

do
    local a = 6
    b = 6
    print(a, b)
end

print(a, b)


--]]

--[[
--a, b, c = 0, 1
print(a, b, c)

a, b = a + 1, b + 1, b + 2
print(a, b)

a, b, c = 0
print(a, b, c)


--]]

--[[
--site = {}
site["key"] = "www.runoob.com"
print(site["key"])
print("################################")
print(site.key)


--]]

--[[
--a = 10
while (a < 20)
do
    print("a的值为：", a)
    a = a + 1;
end
for i = 1, f(x) do
    print(i)
end
 
for i = 10, 1, -1 do
    print(i)
end

a = { "one", "two", "three" }   
for k, v in ipairs(a) do 
    print(k, v)
end

days = { "Sunday", "Monday", "Tuesday", "Wednesdy", "Thursdy", "Friday", "Saturday" }
for k, v in ipairs(days) do
    print(v)
end
a = 10
repeat
    print("a的值为：", a)
    a = a + 1
until(a > 15)

j = 2
for i = 2, 10 do
    for j = 2, (i/j), 2 do
        if (not(i%j)) then
            break
        end
        if (j > (i/j)) then
            print("i 的值为：", i)
        end
    end
end

if (0) then
    print("0 为true")
end

a = 10

if (a < 20) then 
    print("a 小于20")
end

print("a的值为：", a)

a = 100

if (a < 20) then 
    print("a 小于20")
else
    print("a 大于20")
end

print("a 的值为 :", a)

a = 100

if (a == 10) then 
    print("a 的值为10")
elseif (a == 20) then
    print("a 的值为20")
elseif (a == 30) then
    print("a 的值为30")
else
    print("没有匹配a的值")
end

print("a的值为：", a)

a = 100
b = 200

if (a == 100) then
    if (b == 200) then
        print("a 的值为100 b的值为 200")
    end
end

print("a的值为：", a)
print("b的值为：", b)

function max(num1, num2)
    if (num1 > num2) then 
        result = num1
    else
        result = num2 
    end

    return result 
end

print("两值比较最大值为 ", max(10, 4))
print("两值比较最大值为 ",  max(5, 6))

myprint = function(param)
    print("这是一个打印函数 - ##", param, "##")
end 

function add(num1, num2, functionPrint)
    result = num1 + num2
    functionPrint(result)
end

myprint(10)
add(2, 5, myprint)

function maximum(a)
    local mi = 1
    local m = a[mi]
    for k, v in ipairs(a) do
        if v > m then
            mi = k
            m = v
        end 
    end
    return m, mi
end

print(maximum({8, 10, 23, 12, 5}))

function average(...)
    result = 0
    local arg = {...}
    for k, v in ipairs(arg) do
        result = result + v
    end
    print("总共传入 " .. #arg .. " 个数")
    return result/#arg 
end

print("平均值为", average(10, 5, 3, 4, 5, 6))

function average(...)
    result = 0
    local arg = {...}
    for k, v in ipairs(arg) do 
        result = result + v
    end

    print("总共传入 " .. select("#", ...) .. " 个数")
    return result/select("#", ...)
end

print("平均值为", average(10, 5, 3, 4, 5, 6))

function fwrite(fmt, ...)
    return io.write(string.format(fmt, ...))
end

fwrite("runoob\n")
fwrite("%d %d\n", 1, 2)

do 
    function foo(...)
        for i = 1, select('#', ...) do
            local arg = select(i, ...)
            print("arg", arg)
        end
    end

    foo(1, 2, 3, 4)
end

a = true
b = true

if (a and b) then
    print("a and b", a)
end

if (a or b) then
    print("a or b", a)
end

a = false
b = true

if (a and b) then
    print("a and b - 条件为true")
else
    print("a and b - 条件为 false")        
end

if (not(a and b)) then 
    print("not(a and b) - 条件为 true")
else
    print("not(a and b) - 条件为 false")
end

Lua 字符串 

local sourcestr = "prefix--funoobgoogletabao--suffix"
print("\n原始字符串", string.format("%q", sourcestr))

local first_sub = string.sub(sourcestr, 4, 15)
print("\n第一次截取", string.format("%q", first_sub))

local second_sub = string.sub(sourcestr, 1, 8)
print("\n第二次截取", string.format("%q", second_sub))

local third_sub = string.sub(sourcestr, -10)
print("\n第三次截取", string.format("%q", third_sub))

local fourth_sub = string.sub(sourcestr, -100)
print("\n第四次截取", string.format("%q", fourth_sub))

string1 = "Lua"
print(string.upper(string1))
print(string.lower(string1))

string = "Lua Tutorial"

print(string.find(string, "Tutorial"))
reversedString = string.reverse(string)
print("新的字符串为", reversedString)

string1 = "Lua"
string2 = "Tutorial"
number1 = 10
number2 = 20

print(string.format("基本格式化 %s %s", string1, string2))

date = 2; month = 1; year = 2014
print(string.format("日期格式化 %02d/%02d/%03d", date, month, year))

print(string.format("%.4f", 1/3))

string.format("%c", 83)
string.format("%+d", 17.0)
string.format("%05d", 17)
string.format("%o", 17)
string.format("%u", 3.14)
string.format("%x", 13)
string.format("%X", 13)
string.format("%e", 1000)
string.format("%E", 1000)

print(string.byte("Lua"))

print(string.byte("Lua", 3))

print(string.byte("Lua", -1))

print(string.byte("Lua", 2))

print(string.byte("Lua", -2))

print(string.char(97))

string1 = "www."
string2 = "runoob"
string3 = ".com"

print("连接字符串", string1..string2..string3)

print("字符串长度", string.len(string2))

repeatedString = string.rep(string2, 2)
print(repeatedString)

s = "Deadline is 30/05/1999, firm"
date = "%d%d/%d%d/%d%d%d%d"
print(string.sub(s, string.find(s, date)))

print(string.gsub("hello, up-down!", "%A", "."))

Lua 数组
array = { "Lua", "Tutorial" }

for i = 0, 2 do
    print(array[i])
end

array = {}

for i = -2, 2 do 
    array[i] = i * 2
end

for i = -2, 2 do 
    print(array[i])
end

Lua 迭代器
array = {"Google", "Runoob"}

for k, v in ipairs(array) do
    print(k, v)
end

function square(iteratorMaxCount, currentNumber)
    if currentNumber<iteratorMaxCount then
        currentNumber = currentNumber + 1
    return currentNumber, currentNumber*currentNumber
    end
end

for i, n in square,3,0 do
    print(i, n)
end

function iter(a, i)
    i = i + 1
    local v = a[i]
    if v then
        return i, v
    end
end

function ipairs(a)
    return iter, a, 0
end

array = {"Google", "Runoob"}

function elementIterator(collection)
    local index = 0
    local count = #collection 
    -- 闭包函数
    return function()
        index = index + 1
        if index <= count then
            -- 返回迭代器的当前元素
            return collection[index]
        end
    end 
end

for element in elementIterator(array) do
    print(element)
end

Lua table 
mytable = {}
print("mytable 的类型是 ", type(mytable))

mytable[1] = "Lua"
mytable["wow"] = "修改前"
print("mytable 索引为 1 的元素是 ", mytable[1])
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- alternatetable和mytable的是指同一个 table 
alternatetable = mytable 

print("alternatetable 索引为1的元素是 ", alternatetable[1])
print("mytable 索引为 wow 的元素是 ", alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- 释放变量 
alternatetable = nil 
print("alternatetable是 ", alternatetable)

-- mytable 仍然可以访问 
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

mytable = nil 
print("mytable 是 ", mytable)

fruits = { "banana", "orange", "apple" }
-- 返回 table 连接后的字符串
print("连接后的字符串 ", table.concat(fruits))

-- 指定连接的字符
print("连接后的字符串 ", table.concat(fruits, ", "))

-- 指定索引来连接 table 
print("连接后的字符串 ", table.concat(fruits, ", ", 2, 3))

fruits = { "banana", "orange", "apple" }

-- 在末尾插入
table.insert(fruits, "mango")
print("索引为 4 的元素为 ", fruits[4])

-- 在索引为2的键处插入
table.insert(fruits, 2, "grapes")
print("索引为 2 的元为 ", fruits[2])

print("最后一个元素为 ", fruits[5])
table.remove(fruits)
print("移除后最后一个元素为 ", fruits[5])

fruits = { "banana", "orange", "apple", "grapes" }
print("排列前")
for k, v in ipairs(fruits) do 
    print(k, v)
end

table.sort(fruits)
print("排列后")
for k, v in ipairs(fruits) do
    print(k, v)
end

function table_maxn(t)
    local mn = nil 
    for k, v in pairs(t) do
        if (mn == nil) then 
            mn = v
        end
        if mn < v then 
            mv = v
        end
    end
    return mv 
end

tb1 = { [1] = 2, [2] = 6, [3] = 34, [26] = 5 }
print("tb1 最大值: ", table_maxn(tb1))
print("tb1 长度: ", #tb1)

Lua 模块与包
-- 文件名为 module.lua 
-- 定义一个名为 module 的模块
module = {}

-- 定义一个常量
module.constant = "这是一个常量"

-- 定义一个函数
function module.func1()
    io.write("这是一个共有函数! \n")
end

local function func2()
    print("这是一私有函数! ")
end

function module.func3()
    func2()
end

return module

mytable = setmetatable({key1 = "value1"}, {
    __index = function(mytable, key)
        if key == "key2" then
        return "metatablevalue"
    else
        return nil
    end
end
})

print(mytable.key1, mytable.key2)

mytable = setmetatable( {key1 = "valuel"}, { __index = {key2 = "metatablevalue"} } )
print(mytable.key1, mytable.key2)

mymetatable = {}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymtatable })

print(mytable.key1)

mytable.newkey = "新值2"
print(mytable.newkey, mymtatable.newkey)

mytable.key1 = "新值1"
print(mytable.key1, mymetatable.key1)

mymetatable = {}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable })

print(mytable.key1)

mytable.newkey = "新值2"
print(mytable.newkey,mymetatable.newkey)

mytable.key1 = "新值1"
print(mytable.key1,mymetatable.key1)

mytable = setmetatable( {key1 = "value1"}, {
    __newindex = function(mytable, key, value)
        rawset(mytable, key, "\""..value.."\"")

    end 
} )

mytable.key1 = "new value"
mytable.key2 = 4


print(mytable.key1, mytable.key2)

mytable = setmetatable({key1 = "value1"}, {
    __newindex = function(mytable, key, value)
        rawset(mytable, key, "\""..value.."\"")
    end 
})

mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1, mytable.key2)

-- 计算表中最大值, table.maxn在Lua.5.2以上版本中已无法使用
-- 自定义计算表中最大键值函数 table_maxn, 即计算表的元素个数
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do 
        if mn < k then
            mn = k
        end
    end
    return mn 
end

-- 两表相加操作 
mytable = setmetatable({1, 2, 3}, {
    __add = function(mytable, newtable)
        for i = 1, table_maxn(newtable) do
            table.insert(mytable, table_maxn(mytable)+1, newtable[i])
    end
    return mytable
end
})

secondtable = {4, 5, 6}

mytable = mytable + secondtable
for k, v in ipairs(mytable) do
    print(k, v)
end

-- 计算表中的最大值, table.maxn在Lua5.2以上版本中已无法使用
-- 自定义计算表中的最大键建值函数 table_maxn, 级计算表的元素个数 
function table_maxn(t)
    local mn = 0
    for k, v in ipairs(t) do 
        if mn < k then
            mn = k
        end
    end
    return mn 
end

-- 定义元方法 
mytable = setmetatable({10}, {
    __call = function(mytable, newtable)
        sum = 0
        for i = 1, table_maxn(mytable) do
            sum = sum + mytable[i]
        end
    for i = 1, table_maxn(newtable) do
        sum = sum + newtable[i]
    end
    return sum 
end 
})

newtable = {10, 20, 30}
print(mytable(newtable))

mytable = setmetatable({key1 = "value1"}, {
    __index = function(mytable, key)
        if key == "key2" then 
            return "metatablevalue"
        else 
            return nil 
        end 
    end
})

print(mytable.key1, mytable.key2)

mytable = setmetatable({key1 = "valklue1"}, { __index = { key2 = "metatablevalue" } })
print(mytable.key1, mytable.key2)

mytable = setmetatable( {10, 20, 30}, {
    __tostring = function(mytable)
    sum = 0
    for k, v in pairs(mytable) do
        sum = sum + v
    end
    return "表所有元素的和为 " .. sum 
end
} )

print(mytable)

Lua 文件I/O 
-- 以只读方式打开文件
file = io.open("test.lua", "r")

-- 设置默认输入文件为 test.lua 
io.input(file)

-- 输出文件第一行 
print(io.read())

-- 关闭打开的文件 
io.close(file)

-- 以附加的方式打开只写文件
file = io.open("test.lua", "a")

-- 设置默认输出文件为 test.lua    
io.output(file)

-- 在文件最后一行添加 Lua 注析
io.write("-- test.lua 文件末尾注析")

-- 关闭打开的文件
io.close(file)

-- test.lua 文件末尾注析
-- test.lua 文件末尾注析
-- 以只读方式打开文件
file = io.open("test.lua", "r")

-- 

Lua 错误处理
local function add(a, b)
    assert(type(a) == "number", "a 不是一个数字")
    assert(type(b) == "number", "b 不是一个数字")
    return a + b
end

add(10, 1)

pcall(function(i) print(i) end, 33)

function myfunction()
    n = n / nil 
end

function myerrorhandler(err) 
    print("error: ", err)
end

status = xpcall(myfunction, myerrorhandler)
print(status)

function myfunction()
    print(debug.traceback("Stack track"))
    print(debug.getinfo(1))
    print("Stack trace end")
    return 10
end

myfunction()
print(debug.getinfo(1))

function newCounter()
    local n = 0
    local k = 0
    return function()
        k = n
        n = n + 1
        return n
    end 
end

counter = newCounter()
print(counter())
print(counter())

local i = 1

repeat
    name, val = debug.getupvalue(counter, i)
    if name then
        print("index", i, name, "=", val)
        if (name == "n") then 
            debug.setupvalue(counter, 2, 10)
        end
        i = i + 1
    end
until not name 

print(counter())

Lua 调试(Debug)
function myfunction()
    print(debug.traceback("Stack trace"))
    print(debug.getinfo(1))
    print("Stack trace end")
        return 10
end

myfunction()
print(debug.getinfo(1))

Lua 垃圾回收
mytable = { "apple", "orange", "banana" }

print(collectgarbage("count"))

mytable = nil

print(collectgarbage("count"))

print(collectgarbage("collect"))

print(collectgarbage("count"))

Lua 面向对象
-- 元类
Rectangle = {area = 0, length = 0, breadth = 0 }

-- 派生类的方法 new 
function Rectangle:new (o, length, breadth)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.length = length or 0
    self.breadth = breadth or 0
    self.area = length*breadth;
    return 0
end

-- 派生类的方法 printArea
function Rectangle:printArea()
    print("矩形面积为 ", self.area)
end

-- 元类
Rectangle = {area = 0, length = 0, breadth = 0}

-- 派生类的方法 new
function Rectangle:new (o,length,breadth)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  self.length = length or 0
  self.breadth = breadth or 0
  self.area = length*breadth;
  return o
end

-- 派生类的方法 printArea
function Rectangle:printArea ()
  print("矩形面积为 ",self.area)
end

-- 元类
Shape = { area = 0 }

-- 基础类方法 new 
function Shape:new (o, side)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    side = side or 0
    self.area = side*side
    return 0
end

-- 基础类方法 printArea 
function Shape:printArea()
    print("面积为 ", self.area)
end

-- 创建对象
myshape = Shape:new(nil, 10)

myshape:printArea()

-- 元类
Shape = {area = 0}

-- 基础类方法 new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end

-- 基础类方法 printArea
function Shape:printArea ()
  print("面积为 ",self.area)
end

-- 创建对象
myshape = Shape:new(nil,10)

myshape:printArea()

-- Meta class
Shape = { area = 0 }
-- 基础类方法 new 
function Shape:new (o, side)
    o = o or {}
    setmetatable(o, self)
    self.
end


--]]
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 元类
Rectangle = { area = 0, length = 0, breadth = 0 }

-- 派生类的方法 new 
function Rectangle : new(o, length, breadth)
    o = o or {}
    setmetatable(o, self)
    self.__index = self 
    self.length = length or 0
    self.breadth = breadth or 0
    self.area = length * breadth;
    return o
end 

-- 派生类的方法 printArea
function Rectangle : printArea()
    print("矩形面积为 ", self.area)
end

















