roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def to_roman(map, no, text = '')
  return text if no == 0
  map.keys.each do |divisor|
    quotient, modulus = no.divmod(divisor)
    text << map[divisor] * quotient
    return to_roman(map, modulus, text) if quotient > 0
  end    
end

puts to_roman(roman_mapping, 1)
puts to_roman(roman_mapping, 1990)
puts to_roman(roman_mapping, 1143)
puts to_roman(roman_mapping, 2001)

