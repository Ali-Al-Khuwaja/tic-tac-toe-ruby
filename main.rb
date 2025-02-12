require_relative 'lib/player'
require_relative 'lib/board'

def play
  board = Board.new
  player_x = Player.new('ali', 'O', board)
  player_o = Player.new('bob', 'X', board)
  player_x.draw_on_board(2)
  player_o.draw_on_board(5)
  # for i in 0..8 do
  #   puts 'where do you want to draw ? choose between 0 and 8 !'

  # end
end

play
