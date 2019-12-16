#!/usr/bin/env ruby
# frozen_string_literal: true

require '../lib/game_methods'

# include(../lib/game_methods.rb)

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
lop = true
while lop
  puts "Player 1: Enter your name?"
  begin
    p_one_name = Kernel.gets.chomp.match("[a-zA-Z]+.*").string
  rescue
    puts "Please do not use only numbers on your name!!"
  else
    p_one = Player.new(p_one_name)
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
    p_two = Player.new(p_two_name)
    lop2 = false
  end
end


puts "-------------Let's begin #{p_one.name} VS #{p_two.name}-------------"
new_game = Game.new()
p "Movements"
puts "#{p_one.name}".ljust(10) + ": #{p_one.selection.size}".rjust(10)
puts "#{p_two.name}".ljust(10) + ": #{p_two.selection.size}".rjust(10)
puts ""

turn = 0
while !new_game.winner

  puts "BOARD".center(20)
  print ''.center(6)
  for slot in new_game.available_board do
    print "|#{slot}"
    if (slot % 3) == 0
      print "|\n"
      print ''.center(6)
    end
  end
  puts ""
  new_game.turn = new_game.next_turn(turn)
  if new_game.turn
    puts "#{p_one.name}, pick a number:"
    p_one_move = gets.chomp
    # p_one_selection << player_one_move
  else
    puts "#{p_two.name}, pick a number:"
    p_one_move = gets.chomp
    # p_one_selection << player_one_move
  end
  turn += 1
  print turn
  print new_game.turn
  print "ENd of the while"
end



# p "Movements"
# puts "#{p_one_name}".ljust(10) + ": #{p_one_selection.size}".rjust(10)
# puts "#{p_two_name}".ljust(10) + ": #{p_two_selection.size}".rjust(10)
# puts "Display board"


puts "#{p_two_name}:"
p_two_move = gets.chomp
p_two_selection << 1
p "Movements"
puts "#{p_one_name}".ljust(10) + ": #{p_one_selection.size}".rjust(10)
puts "#{p_two_name}".ljust(10) + ": #{p_two_selection.size}".rjust(10)
puts "Display board"

puts "#{p_one_name}:"
p_one_move = gets.chomp
p_one_selection << 1
p "Movements"
puts "#{p_one_name}".ljust(10) + ": #{p_one_selection.size}".rjust(10)
puts "#{p_two_name}".ljust(10) + ": #{p_two_selection.size}".rjust(10)
puts "Display board"

puts "#{p_two_name}:"
p_two_move = gets.chomp
p_two_selection << 1
p "Movements"
puts "#{p_one_name}".ljust(10) + ": #{p_one_selection.size}".rjust(10)
puts "#{p_two_name}".ljust(10) + ": #{p_two_selection.size}".rjust(10)
puts "Display board"

puts "#{p_one_name}:"
p_one_move = gets.chomp
p_one_selection << 1
p "Movements"
puts "#{p_one_name}".ljust(10) + ": #{p_one_selection.size}".rjust(10)
puts "#{p_two_name}".ljust(10) + ": #{p_two_selection.size}".rjust(10)
puts "Display board"

puts "Starting with this movement we will check for a winer!!"

puts "#{p_two_name}:"
p_two_move = gets.chomp
p_two_selection << 1
p "Movements"
puts "#{p_one_name}".ljust(10) + ": #{p_one_selection.size}".rjust(10)
puts "#{p_two_name}".ljust(10) + ": #{p_two_selection.size}".rjust(10)
puts "Display board"

puts "#{p_one_name}:"
p_one_move = gets.chomp
p_one_selection << 1
p "Movements"
puts "#{p_one_name}".ljust(10) + ": #{p_one_selection.size}".rjust(10)
puts "#{p_two_name}".ljust(10) + ": #{p_two_selection.size}".rjust(10)
puts "Display board"

puts "#{p_two_name}:"
p_two_move = gets.chomp
p_two_selection << 1
p "Movements"
puts "#{p_one_name}".ljust(10) + ": #{p_one_selection.size}".rjust(10)
puts "#{p_two_name}".ljust(10) + ": #{p_two_selection.size}".rjust(10)
puts "Display board"

puts "#{p_one_name}:"
p_one_move = gets.chomp
p_one_selection << 1
p "Movements"
puts "#{p_one_name}".ljust(10) + ": #{p_one_selection.size}".rjust(10)
puts "#{p_two_name}".ljust(10) + ": #{p_two_selection.size}".rjust(10)
puts "Display board"

puts "If anyone wins display a message --This is a tie-- reset the game to play again"
