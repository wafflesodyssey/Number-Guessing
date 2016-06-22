#start
number = 22
guesses = 5
hidden = rand(100)
  puts "I'm thinking of a number between 1 and 100."
  print "What number am I thinking of? "
  guess = gets.chomp.to_i
  guesses -= 1
  while guesses > 0
  break if guess == random_number
  puts "Too high" if guess > random_number
  puts "Too low" if guess < random_number
end

if guess == number
  puts "You win!"
else guess < number
  puts "You lose, sorry!"
end
