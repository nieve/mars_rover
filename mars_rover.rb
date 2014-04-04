class MarsRover
  def initialize x,y,direction,horizontal_size,vertical_size
    @x = x
    @y = y
    @direction = direction
    @horizontal_size = horizontal_size
    @vertical_size = vertical_size
  end
  def position
    {:x => @x, :y => @y}
  end
  def facing
    @direction
  end
  def move_forward
    move 1
  end
  def move_backwards
    move -1
  end
  def pivot_right
    pivot 1
  end
  def pivot_left
    pivot -1
  end
  alias_method :F, :move_forward
  alias_method :B, :move_backwards

  private
  def pivot(towards)
    directions = {n: 0, e: 1, s: 2, w: 3}
    move = (directions[facing] + towards) % 4
    @direction = directions.key move
  end
  def move(step)
    case @direction
      when :n
        @y = (@y + step) % @vertical_size
      when :s
        @y = (@y - step) % @vertical_size
      when :e
        @x = (@x + step) % @horizontal_size
      when :w
        @x = (@x - step) % @horizontal_size
    end
  end
end