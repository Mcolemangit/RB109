def win?(first, second)
  (first == 'rock' && second == 'scissors' || second == 'lizard') ||
    (first == 'paper' && second == 'rock' || second == 'spock') ||
    (first == 'scissors' && second == 'paper' || second == 'lizard') ||
    (first == 'lizard' && second == 'spock' || second == 'paper') ||
    (first == 'spock' && second == 'scissors' || second == 'rock') ||
end
first = ""
second = ""
p win?(first, second)
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
