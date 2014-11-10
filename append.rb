def append(arr, n)
  if n < 0
    arr
  else
  	arr << n
  	append(arr, n - 1)
  end
end

def rev_append(arr, n)
  if n < 0
    arr
  else
  	rev_append(arr, n - 1)
  	arr << n
  	arr
  end
end



puts rev_append([], 3).inspect
  	
  