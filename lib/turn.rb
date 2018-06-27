def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index >= 0 && index <= 8
    if !position_taken?(board, index)
      return true
    else 
      return false
    end
  else 
    return false
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    else 
      return true
    end
end

def move(board, index, token = "X")
  board[index] = " #{token} "
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input_index = input_to_index(gets.chomp)
  
  if valid_move?(board,input_index)
    puts "Please enter a token:"
    user_token = gets.chomp
    move(board,input_index,user_token)
  else 
    turn(board)
  end
end