class Spaetkauf
  attr_reader :line

  def initialize
    @line = []
  end

  def take_number(string)
    @line << string
    display_stuff(@line)
  end

  def now_serving
    @line.shift
  end

  def display_stuff(stuff)
    stuff.map.with_index(1) { |item, index| "#{index}. #{item}" }
  end

end
