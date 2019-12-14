# frozen_string_literal: true

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
p_one_name = ''
p_two_name = ''
lop = true
while lop
  puts "Player 1: Enter your name?"
  begin
    p_one_name = Kernel.gets.chomp.match("[a-zA-Z]+.*").string
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
    p_two_name = Kernel.gets.chomp.match("[a-zA-Z]+.*").string
  rescue
    puts "Please do not use only numbers on your name!!"
  else
    lop2 = false
  end
end

puts "-------------Let's begin #{p_one_name} VS #{p_two_name}-------------"
puts "Score"
p_one_score = 0
p_two_score = 0
puts "#{p_one_name}".ljust(10) + ": #{p_one_score}".rjust(10)
puts "#{p_two_name}".ljust(10) + ": #{p_two_score}".rjust(10)
puts ""
puts "#{p_one_name}: pick a number in the board to start"
puts "BOARD".center(20)
puts "|1|2|3|".center(20)
puts "|4|5|6|".center(20)
puts "|7|8|9|".center(20)
available = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p_one_selection = [1,2,3,4,5]
p_two_selection = []

while p_one_selection.size + p_two_selection.size < 5
  p_one_input= gets.chomp.to_i
  while !available.include?(p_one_input)
    puts "Please select a number from the board"
    p_one_input = gets.chomp
  end
  p_one_selection << p_one_input
  available[p_one_input-1] = "-"
end

while 5 <= p_one_selection.size + p_two_selection.size && p_one_selection.size + p_two_selection.size <=9
  p_one_input= gets.chomp.to_i
  while !available.include?(p_one_input)
    puts "Please select a number from the board"
    p_one_input = gets.chomp
  end
  p_one_selection << p_one_input
  available[p_one_input-1] = "-"
end
