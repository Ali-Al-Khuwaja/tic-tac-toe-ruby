class Player
  def initialize(name, marker, board)
    @board = board
    @name = name
    @marker = marker
  end

  def draw_on_board(where)
    @board.change_cell_mark(where, @marker)
  end
end
