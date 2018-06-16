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
 "#{user_input}".to_i - 1 #input converted to integer
end

def turn(board)
  puts "Please enter 1-9:"
  boolCheck  = false

  while boolCheck == false
    input = gets.strip # convert the value
    location = input_to_index(input) #converted to integer

    if valid_move?(board,location) == false #value check forced entry
      puts "Not a valid move. Please try again."
    else
      boolCheck = true #exit the loop
      move(board,location,)
      display_board(board)

   end
 end
end

def move(array,index,value)
  array[index] = value
end

def position_taken?(board, location)
  !(board[location].nil? || board[location] == " " || board[location] == "")
end
