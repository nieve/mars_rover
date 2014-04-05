class Rover
  def initialize x,y,direction,horizontal_size,vertical_size,obstacles = nil
    set_position({:x => x, :y => y})
    @direction = direction
    @horizontal_size = horizontal_size
    @vertical_size = vertical_size
    @obstacles = obstacles || []
  end
  def position; {:x => @x, :y => @y, :facing => @direction}; end
  def facing; @direction; end
  def move_forward; move 1; end
  def move_backwards; move -1; end
  def pivot_right; pivot 1; end
  def pivot_left; pivot -1; end
  def run_commands commands
    commands.split('').each{|cmd| send(cmd)}
  end
  alias_method :F, :move_forward
  alias_method :B, :move_backwards
  alias_method :R, :pivot_right
  alias_method :L, :pivot_left

  private
  def set_position(position)
    @x = position[:x]
    @y = position[:y]
  end
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
    set_position({:x => x, :y => y})
  end
end

class ObstacleException < Exception	
end