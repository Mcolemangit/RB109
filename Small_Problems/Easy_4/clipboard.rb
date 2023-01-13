def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end
p string_to_integer('-570')

if string.include?('-')
  string2 = string.dup
  string.delete_prefix!('-')
else
  string
end
p string
p string2
