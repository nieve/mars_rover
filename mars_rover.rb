class MarsRover
  def initialize x,y,direction,width,length
    @x = x
    @y = y
    @direction = direction
    @width = width
    @length = length
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
        @y += step
      when :s
        @y -= step
      when :e
        @x += step
      when :w
        @x -= step
    end
  end
end