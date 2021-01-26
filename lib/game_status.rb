# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], # middle row
  [6,7,8], #bottom row
  [0,4,8], #left diagonal row
  [0,3,6], #left row
  [1,4,7], #vertical middle row
  [2,5,8], #right row
  [2,4,6] #right diagonal row
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X" && position_taken?(board, index)
      return win_combination
    else
      return false
  end
 end
end


def full?(board)
    board.all? do |board_full|
      board_full == "X" || board_full == "O"
    end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return nil
  end
end

def winner(board)
  checkwinner = won?(board)
   if board[checkwinner[0]] == "X"
      return "X"
    elsif board[checkwinner[0]] == "O"
      return "O"
    else won?(board) == false
      return nil
    end
  end
