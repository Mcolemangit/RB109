def win?(first, second)
  winners = {'rock' => ['lizard', 'scissors'], 'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard', ], 'lizard' => ['spock', 'paper'],
  'spock' => ['rock', 'scissors']}
  check_win = winners.map do|key, value|
              key == first && value.include?(second)
              end
  check_win.include?(true)
end
player = 'rock'
computer = 'paper'

 p win?(player,computer)

 def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end
