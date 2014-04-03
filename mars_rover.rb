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
    directions = {n: 1, e: 2, s: 3, w: 4}
    move = directions[facing]
    move = move == 4 ? 1 : move + 1
    @direction = directions.key move
  end
  def pivot_left
    directions = {n: 1, e: 2, s: 3, w: 4}
    move = directions[facing]
    move = move == 1 ? 4 : move - 1
    @direction = directions.key move
  end
  alias_method :F, :move_forward
  alias_method :B, :move_backwards

  private
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