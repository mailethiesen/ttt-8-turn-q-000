def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  !position_taken?(board, position) && position.to_i.between?(1,9)
end

def move(board, input, char = "X" )
  board[(input.to_i)-1] = char
end

def position_taken?(board, position)
  if board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil
    return false
  elsif board[position.to_i-1] == "X" || board[position.to_i-1] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i && valid_move?(board, "1")
until input != gets.strip.to_i.between?(1,9)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  end
end

#def using_until
#  levitation_force = 6
#  until levitation_force == 10
#    puts "Wingardium Leviosa"
#    levitation_force += 1
#  end
#end