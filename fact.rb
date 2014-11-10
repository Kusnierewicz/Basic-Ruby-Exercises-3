def fact(n)
  if n == 0
  	return 1
  else
  	n * fact(n-1)
  end
end

def demo_fact(n)
  n.times do |r|
  	puts fact(r)
  end
end

demo_fact(10)