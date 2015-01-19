require "date"

birthday = [Date.new(2000,2,3), Date.new(1990,4,19), Date.new(1945,1,19), Date.new(1981,9,12)]

number = rand(4)

temp = birthday[number]
today = Date.today

if temp.mon == today.mon && temp.mday == today.mday
    print "It is your Bday!"
else
  print "You should check this when is your Bday. We have a surprise for you."
  end