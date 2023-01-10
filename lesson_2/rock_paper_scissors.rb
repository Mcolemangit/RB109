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
    ("You won!")
  elsif win?(computer, player)
    ("Computer won!")
  else
    ("It's a tie!")
  end
end

loop do
  comp_count = 0
  player_count = 0
  prompt(" Welcome to RPSLS! Choose one: #{VALID_CHOICES.values}.
    (Example: 'r' for rock etc. For 'spock', specify 'sp'.)
    First to win three games wins the match. Good Luck!")
  until comp_count == 3 || player_count == 3

    choice = ''
    ans = ''
    loop do
      choice = gets.chomp
      ans = VALID_CHOICES.select { |key, _| key == choice }
      system 'clear'
      if ans.keys.include?(choice)
        break
      else
        prompt("That's not as valid choice.")
      end
    end

    comp_choice = ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample

    prompt("You chose: '#{ans.values.shift}' Computer chose: '#{comp_choice}'")

    result = display_results(ans.values.shift, comp_choice)

    prompt(display_results(ans.values.shift, comp_choice))

    if result == "You won!"
      player_count += 1
    elsif result == "Computer won!"
      comp_count += 1
    end

    prompt("Score: Computer: #{comp_count} You: #{player_count}
      Go again!")

    if comp_count == 3
      puts "Game over. Computer won!"
    elsif player_count == 3
      puts "Game over. You win!"
    end
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing!")
