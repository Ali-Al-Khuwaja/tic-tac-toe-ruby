require_relative 'lib/player'
require_relative 'lib/board'

def play
  player_x = Player.new('ali', 'O')
  player_o = Player.new('bob', 'X')
  for i in 0..9 do
    puts 'where do you want to draw ? choose between 0 and 8 !'
    player_x.draw_on_board(2)
    player_o.draw_on_board(5)
  end
end

play
