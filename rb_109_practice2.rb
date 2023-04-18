require 'yaml'
MSGS = YAML.load_file('practice.yml')

VALID_CHOICES = { 'r' => 'rock', 'p' => 'paper', 's' => 'scissors',
                  'l' => 'lizard', 'sp' => 'spock' }
# Methods
def prompt(message)
  puts "=> #{message}"
end

def get_choice
  choice = ''
  loop do
    prompt(MSGS['start'])
    choice = gets.chomp

    if VALID_CHOICES.key?(choice)
      break
    else
      prompt(MSGS['error'])
    end
  end
  VALID_CHOICES.fetch(choice)
end

def win?(first, second)
  winners = { 'rock' => ['lizard', 'scissors'],
              'paper' => ['rock', 'spock'],
              'scissors' => ['paper', 'lizard'],
              'lizard' => ['spock', 'paper'],
              'spock' => ['rock', 'scissors'] }
  winners[first].include?(second)
end

def display_score(player, computer)
  prompt("Score: You:#{player} Computer:#{computer}")
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
    prompt(MSGS['winner'])
  else
    prompt(MSGS['loser'])
  end
end
# Game
loop do
  system("clear")
  player_count = 0
  computer_count = 0
  prompt(MSGS['welcome'])

  until player_count == 3 || computer_count == 3

    display_score(player_count, computer_count)

    player_choice = get_choice
    computer_choice = VALID_CHOICES.values.sample

    prompt("You chose #{player_choice}, computer chose #{computer_choice}")

    result = display_results(player_choice, computer_choice)

    prompt(result)

    if result == "You won!"
      player_count += 1
    elsif result == "Computer won!"
      computer_count += 1
    end
  end

  display_score(player_count, computer_count)

  display_final(player_count)

  prompt(MSGS['again'])
  answer = gets.chomp
  break if answer.downcase != "y"
end
prompt(MSGS['thanks'])


