def area(length, width)
  length * width
end

def area_meter(length, width)
  (length * width) / 10.7639
end

puts "Enter length of the room in feet:"

ans1 = gets.chomp.to_f

puts "Enter width of the room in feet:"

ans2 = gets.chomp.to_f

puts "The area of the room is #{area(ans1,ans2)} square feet (#{area_meter(ans1,ans2)} square meters)."
