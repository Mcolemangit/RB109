puts "How old are you?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire = gets.chomp.to_i

length = retire - age

t = Time.new

year = t.year + length

puts "It's #{t.year}. You will retire in #{year}."
puts "You have only #{length} years of work to go!"



