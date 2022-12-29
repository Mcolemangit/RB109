puts "Enter the first number:"
first = gets.chomp.to_i

puts "Enter the second number:"
second = gets.chomp.to_i

add = first + second
p  "#{first} + #{second} = #{add}"

subtract = first - second
p "#{first} - #{second} = #{subtract}"

product = first * second
p "#{first} * #{second} = #{product}"

quotient = first / second
p "#{first} / #{second} = #{quotient}"

remainder = first % second
p "#{first} % #{second} = #{remainder}"

power = first ** second
p "#{first} ** #{second} = #{power}"

