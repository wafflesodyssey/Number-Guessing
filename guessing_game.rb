#start                                        # => 22
guesses = 5                                         # => 5
random_number = rand(100)
                     # => 13
puts "I'm thinking of a number between 1 and 100."  # => nil
print "What number am I thinking of? "
           # => nil


while guesses > 0                           # => true
    guess = gets.chomp.to_i                 # ~> NoMethodError: undefined method `chomp' for nil:NilClass
    guesses -= 1
break if guess == random_number
  puts "Too high" if guess > random_number
  puts "Too low" if guess < random_number
end


if guess == random_number
  puts "You win!"
else guess < random_number
  puts "You lose, sorry!"
end

# >> I'm thinking of a number between 1 and 100.
# >> What number am I thinking of?

# ~> NoMethodError
# ~> undefined method `chomp' for nil:NilClass
# ~>
# ~> /Users/tonyun/Desktop/class/number_guessing/guessing_game.rb:10:in `<main>'
