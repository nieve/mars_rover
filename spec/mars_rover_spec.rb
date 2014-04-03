require "spec_helper"

describe "MarsRover" do
  describe "moving" do
    rover = MarsRover.new 5,5,:n,10,10
    it "should be able to move forward" do
      rover.move_forward
      expect(rover.position).to eq({:x => 5, :y => 6})
    end
  end
end