def tipper(bill,percent)
  bill * percent
end

def total(bill,tip)
  bill + tip
end

puts "What is your bill?"

ans_1 = gets.chomp.to_f

puts "What's the tip percentage?"

ans_2 = (gets.chomp.to_f) / 100

puts "The tip is #{format("%0.2f", tipper(ans_1,ans_2))}"

puts "The total is #{format("%0.2f", total(ans_1,tipper(ans_1,ans_2)))}"
