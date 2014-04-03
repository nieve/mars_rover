class MarsRover
  def initialize x,y,direction,width,length
    @x = x
    @y = y
    @direction = direction
    @width = width
    @length = length
  end
  def move_forward
    move 1
  end
  def move_backwards
    move -1
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
  def position
    {:x => @x, :y => @y}
  end
  def facing
    @direction
  end
end