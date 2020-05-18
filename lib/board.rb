class Board

  attr_accessor :cells



  def initialize(cells = Array.new(9, " "))
  @cells = cells
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
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
