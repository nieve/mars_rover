require "spec_helper"

describe "Rover" do
  describe "pivoting" do
    context "facing west" do
      before(:each) do
        @rover = Rover.new 5,5,:w,10,10
      end
      it "should pivot to the right" do
        @rover.pivot_right
        expect(@rover.facing).to eq(:n)
      end
      it "should pivot to the left" do
        @rover.pivot_left
        expect(@rover.facing).to eq(:s)
      end
    end
    context "facing east" do
      before(:each) do
        @rover = Rover.new 5,5,:e,10,10
      end
      it "should pivot to the right" do
        @rover.pivot_right
        expect(@rover.facing).to eq(:s)
      end
      it "should pivot to the left" do
        @rover.pivot_left
        expect(@rover.facing).to eq(:n)
      end
    end
    context "facing south" do
      before(:each) do
        @rover = Rover.new 5,5,:s,10,10
      end
      it "should pivot to the right" do
        @rover.pivot_right
        expect(@rover.facing).to eq(:w)
      end
      it "should pivot to the left" do
        @rover.pivot_left
        expect(@rover.facing).to eq(:e)
      end
    end
    context "facing north" do
      before(:each) do
        @rover = Rover.new 5,5,:n,10,10
      end
      it "should pivot to the right" do
        @rover.pivot_right
        expect(@rover.facing).to eq(:e)
      end
      it "should pivot to the left" do
        @rover.pivot_left
        expect(@rover.facing).to eq(:w)
      end
    end
  end
end