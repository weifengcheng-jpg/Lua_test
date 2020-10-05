
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

a = 10
while (a < 20)
do
    print("a的值为：", a)
    a = a + 1;
end

















