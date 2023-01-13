# my long way
def short_long_short(x,y)
  long = ""
  short = ""
  if x.length > y.length
    long << x
    short << y
  else
    long << y
    short << x
  end
  short+long+short
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')

#ls short way
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end


