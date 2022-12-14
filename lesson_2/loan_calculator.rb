require 'yaml'
MESSAGES = YAML.load_file('loan_calc_messages.yml')

def prompt(message)
  puts message
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end

def monthly_payment(l, j, n)
  l * (j / (1 - (1 + j)**(-n)))
end

loop do # main loop
  loan_amount = ''
  loop do
    prompt(MESSAGES['welcome'])
    loan_amount = gets.chomp

    if number?(loan_amount)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  loan_amount = loan_amount.to_i

  loan_duration = ''
  loop do
    prompt(MESSAGES['duration'])
    loan_duration = gets.chomp.split

    if loan_duration.any? do |x|
         ['month', 'months', 'year', 'years'].include? x
       end
      break
    else
      prompt(MESSAGES['invalid2'])
    end
  end

  length = loan_duration[0].to_f

  interest = ''
  loop do
    prompt(MESSAGES['apr'])
    interest = gets.chomp

    if number?(interest)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  apr = interest.to_f

  monthly_apr = (apr / 100) / 12

  if loan_duration.include?('year') || loan_duration.include?('years')
    months = length * 12
    result = monthly_payment(loan_amount, monthly_apr, months)
  else
    result = monthly_payment(loan_amount, monthly_apr, length)
  end

  puts "Your monthly payment is #{result}."

  prompt(MESSAGES['again'])
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end
