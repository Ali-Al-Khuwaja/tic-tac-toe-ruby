class Player
  attr_accessor :is_active

  def initialize(name, marker, board, is_active)
    @board = board
    @name = name
    @marker = marker
    @is_active = is_active
  end

  def draw_on_board
    puts 'where do you want to draw ? choose between 0 and 8 !'
    where = gets.chomp.to_i
    @board.try_to_draw(where, @marker)
  end
end
