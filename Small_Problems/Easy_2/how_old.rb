age = rand(20..200)

puts "Hi! What's your name?"

answer = gets.chomp

def name(answer)
  if answer.empty?
    'Teddy'
  else
     answer
  end
end

puts " #{name(answer)} is #{age} years old now!"

# OR

def your_name(name = 'Teddy')
  puts 'What is your name?'
  answer = gets.chomp
  answer.empty? ? name : answer
end

age = rand(20..200)
name = your_name

puts "#{name}'s age is: #{age}!"
