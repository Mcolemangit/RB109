VALID_CHOICES = { 'r' => 'rock', 'p' => 'paper', 's' => 'scissors',
  'l' => 'lizard', 'sp' => 'spock' }
# Methods
def prompt(message)
puts "=> #{message}"
end

def get_choice
choice = ''
loop do
prompt("Choose one of the following by entering the first letter:
(For 'spock' enter 'sp')   #{VALID_CHOICES.values.join(', ')}")
choice = gets.chomp

if VALID_CHOICES.key?(choice) == false
prompt("That's not a valid choice.")
else
break
end
end
VALID_CHOICES.fetch(choice)
end

def win?(first, second)
winners = { 'rock' => ['lizard', 'scissors'], 'paper' => ['rock', 'spock'],
'scissors' => ['paper', 'lizard'], 'lizard' => ['spock', 'paper'],
'spock' => ['rock', 'scissors'] }
check_win = winners.map do |key, value|
key == first && value.include?(second)
end
check_win.include?(true)
end

def display_score(player, computer)
puts "Score: You:#{player} Computer:#{computer}"
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

def display_final(winner)
if winner == 3
prompt("Game over. You are the winner!")
else
prompt("Game over. Computer is the winner!")
end
end
# Game 
loop do
system("clear")
player_count = 0
computer_count = 0
prompt("Welcome to RPSLS! First to win three matches wins the game.")

until player_count == 3 || computer_count == 3

display_score(player_count, computer_count)

player_choice = get_choice
computer_choice = VALID_CHOICES.values.sample

prompt("You chose #{player_choice}, computer chose #{computer_choice}")

result = display_results(player_choice.to_s, computer_choice)

prompt(result)

if result == "You won!"
player_count += 1
elsif result == "Computer won!"
computer_count += 1
end
end

display_score(player_count, computer_count)

display_final(player_count)

prompt("Would you like to play again? Type 'Y' to play again.")
answer = gets.chomp
break if answer.downcase != "y"
end
prompt("Thanks for playing!")

