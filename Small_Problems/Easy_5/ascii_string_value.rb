def ascii_value(string)
  sum = string.chars.map{|x| x.ord}.sum
  p sum
end

ascii_value('Four score')
ascii_value('Launch School')
ascii_value('a')
ascii_value('')
