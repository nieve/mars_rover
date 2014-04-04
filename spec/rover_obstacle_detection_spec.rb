require "spec_helper"

describe "Rover" do
  describe "obstacle detection" do
    it "should raise an error when hitting an obstacle" do
      @rover = Rover.new 5,5,:n,10,10, [{x: 5, y: 6}]
      expect{@rover.send('F')}.to raise_error ObstacleException
    end
    it "should stop at the position before the obstacle" do
      @rover = Rover.new 5,5,:n,10,10, [{x: 5, y: 6}]
      expect{@rover.send('F')}.to raise_error ObstacleException
      expect(@rover.position).to eq({:x => 5, :y => 5, :facing => :n})
    end
  end
end