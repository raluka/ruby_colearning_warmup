# Go to your ruby colearning warmup exercises folder
# Once there create a folder and name it warmup-005
# Inside this folder create two files: one titled warmup-005.rb and the other
# warmup-005_spec.rb

# To get yourself into the test-first habit, first copy the tests in
# https://github.com/gustavoguimaraes/ruby-colearning-warmup-exercises/blob/master/warmup-005/warmup-005_spec.rb
# and add to your warm-005_spec.rb. Write an additional test to it.
# You can use the test that is already written as a reference.

# Your task is to create a "dice roller bucket". See README.md

#Push your code to github.



def roll_die(sides)
  # replace this fake implementation of
  # 6 sides die that always return 5
  {:sides => sides, :face => rand(1..sides)}
end

def roll_bucket(dice_sides)
  dice_sides.map do |item|
    roll_die(item)
  end

end

def on_the_table(rolled_dice)
  # return a descriptive string, like:
  # On the table:
  #   Your 4-sided die shows the value of 2
  #   Your 20-sided die shows the value of 17
  # or "No dice in the bucket"

  if rolled_dice.empty?
    "No dice in the bucket"
  else
    rolling_result = rolled_dice.map do |dice|
      "  Your #{dice[:sides]}-sided die shows the value of #{dice[:face]}\n"
    end
    sentence = "On the table:\n#{rolling_result.join}"
  end

end

# In a loop, ask the user for the dice sides

# When the user enter 0, roll the dice in the basket and show the result

puts "Hello user! Welcome to the create and roll program."
puts "Create as many dice you want. A die should have minimum 4 sides. Enter 0 to roll the dice."
dice_sides = []
loop do
  puts "How many sides?"
  answer = gets.chomp.to_i
  if answer == 0
    break
  elsif(1..3).include?(answer)
    puts "You can't have a die with less than 4 sides"
  else
    puts "Added a die with #{answer} sides."
    dice_sides << answer
  end
end
puts on_the_table(roll_bucket(dice_sides))
