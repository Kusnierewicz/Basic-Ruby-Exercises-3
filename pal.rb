def pal(n)
  if n.length == 0
  	true
  elsif n.length == 1
  	true
  elsif n[0] == n[-1]
  	pal(n[1..-2])
  elsif n[0] != n[-1]
  	false
  end
end

puts pal("a")
puts pal("aa")
puts pal("ab")
puts pal("aba")
puts pal("abba")

