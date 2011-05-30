#!/usr/bin/env ruby

def fib(a)
  return 0 if a == 0
  return 1 if a == 1
  a + fib(a-1) 
end

puts fib(0)
puts fib(1)
puts fib(5)

