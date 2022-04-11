puts "Enter from the keyboard to select the following animals: cat, dog, fish, bird: "
while a = gets.chomp
  if a == 'dog' || a == 'cat' || a == 'fish' || a == 'bird'
    break
  else 
    puts "Please enter one of the values ​​cat, dog, fish, bird and re-enter it: "
  end 
end

case a
  when "cat"
    puts "Action: go"
  when "dog"
    puts "Action: go"
  when "fish"
    puts "Action: swim"
  else
    puts "Action: fly"
end