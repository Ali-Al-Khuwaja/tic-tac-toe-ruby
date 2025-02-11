class Board
  def initialize
    @board = [['*', '*', '*'], ['*', '*', '*'], ['*', '*', '*']]
  end

  def print_board
    @board.each do |element|
      p element
    end
  end

  def change_cell_mark(index, mark)
    if index.between?(0, 8)
      if index.between?(0, 2)
        @board[0][index] = mark
        print_board
      elsif index.between?(3, 5)
        @board[1][index - 3] = mark
        print_board
      elsif index.between?(6, 8)
        @board[2][index - 6] = mark
        print_board
      end
    else
      puts 'you should enter an index between 0 and 8'
    end
  end
end
