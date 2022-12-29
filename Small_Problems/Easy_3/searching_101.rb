def number_intake(nth)
  puts "Enter the #{nth} number:"
end

puts "Hello. Please enter 6 numbers, one at a time."

number_intake('1st')
one = gets.chomp.to_i
number_intake('2nd')
two = gets.chomp.to_i
number_intake('3rd')
three = gets.chomp.to_i
number_intake('4th')
four = gets.chomp.to_i
number_intake('5th')
five = gets.chomp.to_i
number_intake('6th')
six = gets.chomp.to_i

ary1 = [one, two, three, four, five ]

if ary1.include?(six)
  puts "The number #{six} appears in #{ary1}."
else
  puts "The number #{six} does not appear in #{ary1}"
end
