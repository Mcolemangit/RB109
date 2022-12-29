p 'Please write word or words:'
ans = gets.chomp
amount = ans.delete(' ').size
p "There are #{amount} characters in '#{ans}'."
