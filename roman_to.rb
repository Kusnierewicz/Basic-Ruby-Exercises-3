roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def roman_to(map, text, num = 0)
  return num if text.length == 0
  map.keys.each do |divisor|
    if text.start_with? divisor
      num += map[divisor]
      text = text.slice(divisor.length, text.length)
      return roman_to(map, text, num)
    end
  end    
end

puts roman_to(roman_mapping, "I")
puts roman_to(roman_mapping, "MCMXC")
puts roman_to(roman_mapping, "MCXLIII")
puts roman_to(roman_mapping, "MMI")