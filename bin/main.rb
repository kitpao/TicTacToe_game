#!/usr/bin/env ruby
require 'timeout'

welcome_input = 1
while welcome_input == 1
  puts "Welcome to Tic Tac Toe, type 1 for 'how to play' or 2 to begin game"
  welcome_input = gets.chomp.to_i
  while welcome_input != 1 && welcome_input != 2
    puts "Please select 1 (instructions) or 2 (begin)"
    welcome_input = gets.chomp.to_i
  end
  if welcome_input == 1
    puts "HERE GOES THE INSTRUCTIONS" 
    puts "Press enter to continue"
    exit = gets.chomp
  end
end
puts "Loading!!"
sleep(1)
player_one_name = ''
player_two_name = ''
lop = true
while lop
  puts "Player 1: Enter your name?"
  begin
    player_one_name = Kernel.gets.match("[a-zA-Z]+.*")
  rescue
    puts "Please do not use only numbers on your name!!"
  else  
    lop = false
  end  
end

lop2 = true
while lop2
  puts "Player 2: Enter your name?"
  begin
    player_two_name = Kernel.gets.match("[a-zA-Z]+.*")
  rescue
    puts "Please do not use only numbers on your name!!"
  else  
    lop2 = false
  end  
end

puts "-------------Let's begin #{player_one_name} VS #{player_two_name}-------------"
puts "Score"
player_one_score = 0
player_two_score = 0
puts "#{player_one_name} : #{player_one_score}"
puts "#{player_two_name} : #{player_two_score}" 


