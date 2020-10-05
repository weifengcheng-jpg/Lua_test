
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


--]]














