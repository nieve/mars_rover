class MarsRover
  def initialize x,y,direction,width,length
    @x = x
    @y = y
    @direction = direction
    @width = width
    @length = length
  end
  def move_forward
  	case @direction
  	  when :n
        @y += 1
  	  when :s
  	    @y -= 1
  	  when :e
  	    @x += 1
  	  when :w
  	    @x -= 1
  	end
  end
  def position
    {:x => @x, :y => @y}
  end
end