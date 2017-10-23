
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, idx, char = "X")
  board[idx] = char
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board, index)
  if board[index] == " " && index >= 0
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  inp = gets.chomp

  i = input_to_index(inp)

  if valid_move?(board,i) == false
    puts "Please re-enter your input:"
    gets.chomp
  end

  move(board, i)
  display_board(board)
end
