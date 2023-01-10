def triangle(n)
  stars = 1
  loop do
    n.times{print " "}
    stars.times{print "*"}
    puts "\n"
    stars += 1
    n -= 1
    break if n == 0
  end
end

triangle(9)

# LS answer:

def triangles(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangles(9)
