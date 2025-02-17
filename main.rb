require_relative 'lib/player'
require_relative 'lib/board'

def play
  board = Board.new
  player_x = Player.new('ali', 'O', board, true)
  player_o = Player.new('bob', 'X', board, false)
  for i in 0..8 do
    if player_x.is_active == true && board.break_loop == false
      player_x.draw_on_board
      player_x.is_active = false
      player_o.is_active = true
    elsif player_o.is_active == true && board.break_loop == false
      player_o.draw_on_board
      player_x.is_active = true
      player_o.is_active = false

    end
  end
end

play
