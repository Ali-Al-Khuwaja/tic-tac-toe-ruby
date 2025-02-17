class Board
  attr_reader :break_loop

  def initialize
    @board = [['*', '*', '*'], ['*', '*', '*'], ['*', '*', '*']]
    @break_loop = false
  end

  def print_board
    @board.each do |element|
      p element
    end
  end

  def try_to_draw(index, mark)
    if index.between?(0, 8)
      if index.between?(0, 2) and @board[0][index] == '*'
        @board[0][index] = mark
        print_board
        check_if_won(mark)
      elsif index.between?(3, 5) and @board[1][index - 3] == '*'
        @board[1][index - 3] = mark
        print_board
        check_if_won(mark)
      elsif index.between?(6, 8) and @board[2][index - 6] == '*'
        @board[2][index - 6] = mark
        print_board
        check_if_won(mark)
      else
        fix_player_input(mark)
      end
    else
      puts 'bro! pick between 0 and 8'
      correct_number = gets.chomp.to_i
      try_to_draw(correct_number, mark)
    end
  end

  def fix_player_input(mark)
    puts 'Occupied, enter a new cell index'
    print_board
    new_index = gets.chomp.to_i
    try_to_draw(new_index, mark)
  end

  def check_if_won(mark)
    winning_combos = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    flat_board = @board.flatten
    # for each element in winning_combo array. take a combo(element) and do this for it :
    #     assign v1, v2, v3 variables to the value of each combo after it has been mapped (v1 = combo after mapping) ->
    #     The mapping here takes a value from combo array then preforms this code : `flat_board[value]` which is only X or O
    #     last , compare if each of v1, v2, v3 is equal to each other, if they are then say that the player has won .
    winning_combos.each do |combo|
      v1, v2, v3 = combo.map { |value| flat_board[value] }
      # Check if all are the same and not empty
      if v1 != '*' && v1 == v2 && v2 == v3
        puts "#{mark} has won"
        @break_loop = true
      end
    end
  end
end
