VALID_CHOICES = { 'r' => 'rock', 'p' => 'paper', 's' => 'scissors',
                  'l' => 'lizard', 'sp' => 'spock' }

def prompt(message)
  puts "=>#{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end


loop do
  choice = ''
  ans = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.values}.
           (Example: 'r' for rock etc. For 'spock' specifiy 'sp'.) ")
    choice = gets.chomp
    ans = VALID_CHOICES.select { |key, _| key == choice }

    if ans.keys.include?(choice)
      break
    else
      prompt("That's not as valid choice.")
    end
  end

  computer_choice = ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample

  prompt("You chose: #{ans.values.shift}; Computer chose: #{computer_choice}")

  display_results(ans.values.shift, computer_choice)
  
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing!")

