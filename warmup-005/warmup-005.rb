


def roll_die(sides)

  {:sides => sides, :face => rand(1..sides)}
end

def roll_bucket(dice_sides)
  dice_sides.map do |item|
    roll_die(item)
  end

end

def on_the_table(rolled_dice)


  if rolled_dice.empty?
    "No dice in the bucket"
  else
    rolling_result = rolled_dice.map do |dice|
      "  Your #{dice[:sides]}-sided die shows the value of #{dice[:face]}\n"
    end
    sentence = "On the table:\n#{rolling_result.join}"
  end

end



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



class Dice


  def initialize(number = 4)
    @terminal = Terminal.new
    @sides = create_sides(number)
  end

  def create_sides(number)
    result = []
    1.upto(number) do |c|
      result << c
    end
    result
  end

  def face
    rand(1..sides)
  end

  def sides
    @sides.size
  end
end

class Games

  def initialize
    @dices = []
  end

  def roll_die(dice)
    dice.face
  end

  def roll_bucket(dice_sides)
    dice_sides.map do |item|
      roll_die(item)
    end

  end

  def create_games
    @terminal.ask
  end

end

class Terminal

  def initialize

  end


  def ask

  end
end