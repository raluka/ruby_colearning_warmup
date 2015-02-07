def first_even_number(array)
  even_array = array.select {|item| item if item.even?}
  even_array.first
end