#https://github.com/georgemillo/return_demo

def implicit_return
  "I <3 Ruby"
end

def name_of_germany_in(language)
  if language == "German"
    "Deutschland"
  elsif language == "English"
    "Germany"
  elsif language == "French"
    "Allemagne"
  end
end


def divide(first, second)
  return "Can't divide!" if second == 0

  first / second
end