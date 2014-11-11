

def flat(arr, arr2 = [])
  
  	arr.each do |item|
  	  if item.kind_of?(Array)
  	  	flat(item, arr2)
  	  	
  	  else
  	  	arr2 << item
  	  end
  	end
  	arr2
end

puts flat([[1],[1,[1]]]).inspect