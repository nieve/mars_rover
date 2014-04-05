class MarsRoverApplication
  def self.run x,y,direction,horizontal_size,vertical_size,commands
    rover = Rover.new x,y,direction,horizontal_size,vertical_size
    rover.run_commands commands
    rover.position
  end
end