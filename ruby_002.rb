require "date"

birthday = [Date.new(2000, 2, 3), Date.new(1990, 4, 19), Date.new(1945, 1, 19), Date.new(1981, 9, 12)]

puts Date.new(2000, 2, 3).mday
temp = birthday.sample
today = Date.today

if temp.mon == today.mon && temp.mday == today.mday
  print "It is your Birthday!"
else
  print "You should check this when is your Birthday. We have a surprise for you."
end
