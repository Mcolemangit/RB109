#my (long) way
def negative(n)
  x = n.to_s
  if x.include?('-') || x.include?('0')
    puts n
  else
    puts n * -1
  end
end

negative(9)

# LS way
def negative(number)
  number > 0 ? -number : number
end
