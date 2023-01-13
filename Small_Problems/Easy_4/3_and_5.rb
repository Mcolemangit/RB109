def multisum(n)
multiples = (1..n).select{|x| x % 3 == 0 || x % 5 == 0}
p multiples.sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
