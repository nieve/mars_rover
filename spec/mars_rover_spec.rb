require "spec_helper"

describe "MarsRover" do
	describe "moving" do
    context "facing north" do
      rover = MarsRover.new 5,5,:n,10,10
      it "should be able to move forward" do
        rover.move_forward
        expect(rover.position).to eq({:x => 5, :y => 6})
      end
      it "should be able to move backwards" do
        rover.move_backwards
        expect(rover.position).to eq({:x => 5, :y => 4})      
      end
    end
    context "facing south" do
      rover = MarsRover.new 5,5,:s,10,10
      it "should be able to move forward south" do
        rover.move_forward
        expect(rover.position).to eq({:x => 5, :y => 4})
      end
    end
    context "facing east" do
      rover = MarsRover.new 5,5,:e,10,10
      it "should be able to move forward east" do
        rover.move_forward
        expect(rover.position).to eq({:x => 6, :y => 5})
      end
    end
    context "facing west" do
      rover = MarsRover.new 5,5,:w,10,10
      it "should be able to move forward west" do
        rover.move_forward
        expect(rover.position).to eq({:x => 4, :y => 5})
      end
    end
  end
end