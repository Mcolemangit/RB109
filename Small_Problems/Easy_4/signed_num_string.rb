STRINGS = {
    0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
    5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
  }

def signed_integer_to_string(num)
  if num.negative?
    num2 = num.dup
    num = num.abs
  else
    num2 = num
    num
  end

  string = num.digits.reverse.map { |char| STRINGS[char] }

  if num2.negative?
    p "-" + string.join
  elsif num2 == 0
    p string.join
  else
    p "+" + string.join
  end
end

#LS solution (uses old integer_to_string method)
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end
