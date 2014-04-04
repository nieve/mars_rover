require "spec_helper"

describe "MarsRover" do
  describe "positioning" do
    context "wrapping the edges of the grid" do
      it "should find itself at the vertical starting point when getting to the end point" do
        @rover = MarsRover.new 5,5,:n,10,10
        (1..5).each{|i| @rover.send('F')}
        expect(@rover.position).to eq({:x => 5, :y => 0})
      end
      it "should find itself behind vertically when going beyond the end point (but less than the vertical size of the grid)" do
        @rover = MarsRover.new 5,5,:n,10,10
        (1..7).each{|i| @rover.send('F')}
        expect(@rover.position).to eq({:x => 5, :y => 2})
      end
      it "should find itself at the horizontal starting point when getting to the end point" do
        @rover = MarsRover.new 5,5,:e,10,10
        (1..5).each{|i| @rover.send('F')}
        expect(@rover.position).to eq({:x => 0, :y => 5})
      end
      it "should find itself behind horizontally when going beyond the end point (but less than the horizontal size of the grid)" do
        @rover = MarsRover.new 5,5,:e,10,10
        (1..8).each{|i| @rover.send('F')}
        expect(@rover.position).to eq({:x => 3, :y => 5})
      end
    end
  end
end