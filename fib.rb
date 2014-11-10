def fib(n)
  if n == 0 
  	return 0
  elsif n == 1
  	return 1
  else
  	n = fib(n-2) + fib(n-1)
  end
end

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(10)

