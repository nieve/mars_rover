class MarsRoverApplication
  def self.run x,y,direction,horizontal_size,vertical_size,commands
    rover = Rover.new x,y,direction,horizontal_size,vertical_size
    commands.split('').each{|cmd| rover.send(cmd)}
    rover.position
  end
end