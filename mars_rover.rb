class MarsRover
  def initialize x,y,direction,horizontal_size,vertical_size,obstacles = nil
    @x = x
    @y = y
    @direction = direction
    @horizontal_size = horizontal_size
    @vertical_size = vertical_size
    @obstacles = obstacles || []
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
    vertical = {n: 1, s: -1}
    horizontal = {e: 1, w: -1}
    y = vertical[@direction] ? (@y + vertical[@direction] * step) % @vertical_size : @y
    x = horizontal[@direction] ? (@x + horizontal[@direction] * step) % @horizontal_size : @x
    raise ObstacleException, "obstacle found" if @obstacles.include?({:x => x, :y => y})
    @x = x
    @y = y
  end
end

class ObstacleException < Exception	
end