require "spec_helper"

describe "Rover" do
  describe "moving" do
    context "facing north" do
      before(:each) do
        @rover = Rover.new 5,5,:n,10,10
      end
      it "should be able to move forward" do
        @rover.send('F')
        expect(@rover.position).to eq({:x => 5, :y => 6, :facing => :n})
      end
      it "should be able to move backwards" do
        @rover.send('B')
        expect(@rover.position).to eq({:x => 5, :y => 4, :facing => :n})
      end
    end
    context "facing south" do
      before(:each) do
        @rover = Rover.new 5,5,:s,10,10
      end
      it "should be able to move forward" do
        @rover.send('F')
        expect(@rover.position).to eq({:x => 5, :y => 4, :facing => :s})
      end
      it "should be able to move backwards" do
        @rover.send('B')
        expect(@rover.position).to eq({:x => 5, :y => 6, :facing => :s})
      end
    end
    context "facing east" do
      before(:each) do
        @rover = Rover.new 5,5,:e,10,10
      end
      it "should be able to move forward" do
        @rover.send('F')
        expect(@rover.position).to eq({:x => 6, :y => 5, :facing => :e})
      end
      it "should be able to move backwards" do
        @rover.send('B')
        expect(@rover.position).to eq({:x => 4, :y => 5, :facing => :e})
      end
    end
    context "facing west" do
      before(:each) do
        @rover = Rover.new 5,5,:w,10,10
      end
      it "should be able to move forward" do
        @rover.send('F')
        expect(@rover.position).to eq({:x => 4, :y => 5, :facing => :w})
      end
      it "should be able to move backwards" do
        @rover.send('B')
        expect(@rover.position).to eq({:x => 6, :y => 5, :facing => :w})
      end
    end
  end
end