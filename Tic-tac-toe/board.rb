# Board class
class Board
  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def place_symbol(cell_num, symbol)
    if @cells[cell_num].is_a? Numeric
      @cells[cell_num] = symbol
      1
    else
      -1
    end
  end

  def print_board
    puts <<~HEREDOC
      #{@cells[0]} | #{@cells[1]} | #{@cells[2]}
      --+---+--
      #{@cells[3]} | #{@cells[4]} | #{@cells[5]}
      --+---+--
      #{@cells[6]} | #{@cells[7]} | #{@cells[8]}
    HEREDOC
  end
end
