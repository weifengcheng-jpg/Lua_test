-- coroutine_test.lua 文件 
co = coroutine.create( -- 创建一个主体函数为 f 的新协程。
    function(i)
        print(i)
    end
)

coroutine.resume(co, 1) -- 开始或继续协程 co 的运行。
print(coroutine.status(co)) -- 以字符串形式返回协程 co 的状态

print("--------------")

co = coroutine.wrap( --创建一个主体函数为 f 的新协程
    function(i)
        print(i)
    end
)

co(1)

print("--------------")

co2 = coroutine.create( -- 创建一个主体函数为 f 的新协程。
    function()
        for i = 1, 10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2)) --running 
                print(coroutine.running()) -- thread:XXXXXXX 返回当前正在运行的协程加一个布尔量。 如果当前运行的协程是主线程，其为真。
            end
            coroutine.yield() -- 挂起正在调用的协程的执行。 传递给 yield 的参数都会转为 resume 的额外返回值。
        end
    end
)

coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3

print(coroutine.status(co2))
print(coroutine.running())

print("-------------")






