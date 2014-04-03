class MarsRover
  def initialize x,y,direction,width,length
    @x = x
    @y = y
    @direction = direction
    @width = width
    @length = length
  end
  def move_forward
    @y += 1
  end
  def position
    {:x => @x, :y => @y}
  end
end