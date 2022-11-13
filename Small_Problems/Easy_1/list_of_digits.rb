def digit_list(number)
   print number.digits.reverse 
end    

digit_list(1234)

#or

def digit_list2(number)
   print number.to_s.chars.map(&:to_i)
  end

digit_list2(4567)  
