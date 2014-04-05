class MarsRoverApplication
  def self.run x,y,direction,horizontal_size,vertical_size,commands,obstacles=nil
    rover = Rover.new x,y,direction,horizontal_size,vertical_size,obstacles
    begin
      rover.run_commands commands
    rescue ObstacleException
    end
    rover.position
  end
end