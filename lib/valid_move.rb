def valid_move?(board, position)
  # if position.to_i.between?(1,9)
  #   if !position_taken?(board, position.to_i-1)
  #     true
  #   end
  # end

  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def position_taken?(board, index)
  board[index] != " "
end
