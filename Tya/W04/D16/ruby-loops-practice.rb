# LOOPS PRACTICE
# Title: Guess The Number

# Activity:

# You are to generate a basic "guess my number" game. The computer will pick a random number between 0 and 10. The user will guess the number until they guess correctly.

# Specification:

# The user should be asked to guess a number
# If the user's guess is correct, the user should see a congratulatory message
# If the user's guess is not correct, the user should be asked to guess the number again.

# Extensions:

# Let the user choose the maximum value (so they can play a long game with a random value between 0 and 10000, for example).
# Give feedback to the user: "Wrong, guess higher!" or "Wrong, guess lower!"
require 'pry'

@correct_number = rand(10)

def guess_my_number(number)
  if number == @correct_number
    puts "You guessed correctly!"
  else
    puts "Guess again"
  end
end

def guess_my_number2
  puts "Please enter the maximum guessing range:"
  maximum_value = gets.to_i
  new_number = rand(maximum_value)
  guess = ""

  while guess != new_number do
    puts "Guess the number:"
    guess = gets.to_i
    if guess < new_number
      puts "Wrong, guess higher!"
    elsif guess > new_number
      puts "Wrong, guess lower!"
    else guess ==  new_number
      puts "Good Job!"
    end
  end
end

binding.pry
