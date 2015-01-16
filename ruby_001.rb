
=begin

puts "Who do you want to know more about: Gustavo, Duilio or Max?"
response = gets.downcase.chomp


case(response)
  when "gustavo"
   puts  "Gustavo's favorite things to do in Berlin are go dancing, attending the ruby-learning meetup, and drinking beer."
  when "Duilio"
    puts "duilio's favorite things to do in Berlin are go shopping, visit museums and hang in the parks."
  when "Max"
    puts "max's favorite things to do in Berlin are the great weather, eating great food and another unknown thing."
  else
    puts "Choose a valid name please!"
end
=end


KNOWLEDGE = {
    "gustavo" => ["learning ruby", "drinking beer", "sitting at the Spree"],
    "duilio" => ["teaching ruby", "great weather", "doing stuff"],
    "max" => ["eating great food", "dancing all night"," German people"]
}

def print_knowledge(person)
  favorite_things = KNOWLEDGE[person]
  puts "#{person.capitalize}'s favorite thing to do in Berlin are #{favorite_things.join(', ')}"
end

person = nil
until person
  print "Who do you want to know more about: Gustavo, Duilio or Max?"
  response = gets.chomp.downcase


  if KNOWLEDGE.key?(response)
    print_knowledge(response)
  else
    puts "Choose a valid name please!"
  end

end