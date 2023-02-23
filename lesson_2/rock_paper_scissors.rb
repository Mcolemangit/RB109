VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  puts "=> #{message}"
end

def get_choice
  choice = ''
  loop do
    prompt("Choose one of the following by entering the first letter.
    For 'spock' enter 'sp' , for 'scissors' 'sc': #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.select { |element| element.start_with?(choice) }.empty?
      prompt("That's not a valid choice.")
    else
      break
    end
  end
  VALID_CHOICES.select { |element| element.start_with?(choice) }
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def final_display(winner)
  if winner == 3
    prompt("Game over. You are the winner!")
  else
    prompt("Game over. Computer is the winner!")
  end
end

loop do
  system("clear")
  player_count = 0
  comp_count = 0
  prompt("Welcome to RPSLS! First to win three matches wins the game.")

  until player_count == 3 || comp_count == 3

    puts "Score: You:#{player_count} Computer:#{comp_count}"

    player_choice = get_choice.join
    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{player_choice}, computer chose #{computer_choice}")

    result = display_results(player_choice.to_s, computer_choice)

    prompt(result)

    if result == "You won!"
      player_count += 1
    elsif result == "Computer won!"
      comp_count += 1
    end
  end

  puts "Score: You:#{player_count} Computer:#{comp_count}"

  final_display(player_count)

  prompt("Would you like to play again? Type 'Y' to play again.")
  ans = gets.chomp
  break if ans.downcase != "y"
end
prompt("Thanks for playing!")

