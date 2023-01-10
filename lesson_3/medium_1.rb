#1
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

#2
puts "the value of 40 + 2 is "  + (40 + 2).to_s
#or
puts "the value of 40 + 2 is #{40 + 2}"

#3
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

factors(0)

#5
limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"



