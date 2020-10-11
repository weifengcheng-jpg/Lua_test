-- test2

function foo (a)
    print("foo 函数输出", a)
    return coroutine.yield(2 * a) -- 返回 2*a 的值
end

co = coroutine.create(function(a, b)
    print("第一次协程程序执行输出", a, b) -- co-boby 1 10
    local r = foo(a + 1)

    print("第二次协同程序执行输出", r)
    local r, s = coroutine.yield(a + b, a - b) -- a, b的值为第一次调用协同程序时传入
    
    print("第三次协同程序执行输出", r, s)
    return b, "结束协同程序"  -- b的值为第二个调用协同程序时传入

end )

print("main", coroutine.resume(co, 1, 10))
print("---分割线---")
print("main", coroutine.resume(co, "r"))
print("---分割线---")
print("main", coroutine.resume(co, "x", "y"))
print("---分割线---")
print("main", coroutine.resume(co, "x", "y"))
print("---分割线---")





