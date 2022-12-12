puts "Please enter an integer greater than 0:"
int = gets.chomp.to_i

puts "Would you like to compute the sum or the product of all integers from till #{int}? (Enter 's' or 'p')."
comp = gets.chomp

ary = (1..int).to_a

if comp == 's'
  p ary.sum
else
  p ary.reduce(:*)
end

