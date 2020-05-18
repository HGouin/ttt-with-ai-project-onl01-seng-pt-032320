class Board

  attr_accessor :cells

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
  end

  def turn_count
  end

  def taken?
  end

  def valid_move?
  end


end
