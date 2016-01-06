class Board
  attr_accessor :grid

  # grid is in rows and columns, beginning of a column is the "top" of the board

  def initialize
    @grid = []
    (0..6).each do |col|
      @grid[col] = []
      (0..5).each do |row|
        @grid[col][row] = 0
      end
    end
  end

  def add_piece(team, col)
    if (team == :red)
      piece = 'R'
    elsif(team == :black)
      piece = 'B'
    end

    @grid[col].each_with_index do |spot,index|
      if spot == 0
      else
        @grid[col][index-1] = piece
      end
    end
  end

end