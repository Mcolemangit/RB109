def century(year)
  century = 1
  start = 1
  loop do
    century = century + 100
    if year < century
      start
    break
    else
      start = start + 1
    end
  end
  start_string = start.to_s

  if start_string.end_with?('1') && start_string.include?('11') == false
    start_string << "st"
  elsif start_string.end_with?('2') && start_string.include?('12') == false
    start_string << "nd"
  elsif start_string.end_with?('3') && start_string.include?('1') == false
    start_string << "rd"
  else
    start_string << "th"
  end
  p start_string
end

#LS Solution
def century2(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
p  century2(2012)
