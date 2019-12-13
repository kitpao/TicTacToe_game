#!/usr/bin/env ruby
puts "Welcome to Tic Tac Toe, type 1 for 'how to play' or 2 to begin game"
welcome_input = gets.chomp.to_i
while welcome_input != 1 && welcome_input != 2
  puts "Please select 1 (instructions) or 2 (begin)"
  welcome_input = gets.chomp.to_i
end
if welcome_input == 1
  puts "HERE GOES THE INSTRUCTIONS"
else

end
