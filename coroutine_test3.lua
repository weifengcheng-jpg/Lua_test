local newProductor

function productor()
    local i = 0
    while true do
        i = i + 1
        send(i)
    end
end

function consumer()
    while true do
        local i = receive()
        print(i)
    end
end

function receive()
    local status, value = coroutine.resume(newProductor)
    return value 
end

function send(x)
    coroutine.yield(x) -- x表示需要发送的值, 值返回以后, 就挂起协同程序
end

-- 启动程序 
newProductor = coroutine.create(productor)
consumer()






