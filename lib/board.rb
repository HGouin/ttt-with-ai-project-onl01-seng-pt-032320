class Board

  attr_accessor :cells



  def initialize(cells = Array.new(9, " "))
  @cells = cells || Array.new(9, " ")
  end

  def cells
    @cells = []

  end

  def reset!
    Array.new(9, " ")
  end

  def display
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
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

  def valid_move?(index)
    if index < 0 || index > 8
      return false
    end
    !position_taken?(index)
  end


end
