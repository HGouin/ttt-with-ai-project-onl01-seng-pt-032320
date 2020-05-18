class Board

  attr_accessor :cells

  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [6,4,2],
  [0,4,8]
]

  def initialize(board = nil)
  @board = board || Array.new(9, " ")
  end

  def cells

  end

  def reset!
  end

  def display
  end

  def position
  end

  def full?
  turn_count == @board.length
  end

  def turn_count
    (0..@board.length - 1).count{|index| position_taken?(index)}
  end

  def taken?
  end

  def valid_move?
  end


end
