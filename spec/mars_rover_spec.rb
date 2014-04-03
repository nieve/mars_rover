require "spec_helper"

describe "MarsRover" do
	describe "moving" do
    context "facing north" do
    	before(:each) do
        @rover = MarsRover.new 5,5,:n,10,10
    	end
      it "should be able to move forward" do
        @rover.send('F')
        expect(@rover.position).to eq({:x => 5, :y => 6})
      end
      it "should be able to move backwards" do
        @rover.send('B')
        expect(@rover.position).to eq({:x => 5, :y => 4})      
      end
      it "should stay facing north after moving forward" do
        @rover.send('F')
        expect(@rover.facing).to eq(:n)
      end
      it "should stay facing north after moving backwards" do
        @rover.send('B')
        expect(@rover.facing).to eq(:n)      
      end
    end
    context "facing south" do
    	before(:each) do
        @rover = MarsRover.new 5,5,:s,10,10
      end
      it "should be able to move forward" do
        @rover.send('F')
        expect(@rover.position).to eq({:x => 5, :y => 4})
      end
      it "should be able to move backwards" do
        @rover.send('B')
        expect(@rover.position).to eq({:x => 5, :y => 6})
      end
      it "should stay facing south after moving forward" do
        @rover.send('F')
        expect(@rover.facing).to eq(:s)
      end
      it "should stay facing south after moving backwards" do
        @rover.send('B')
        expect(@rover.facing).to eq(:s)      
      end
    end
    context "facing east" do
    	before(:each) do
        @rover = MarsRover.new 5,5,:e,10,10
      end
      it "should be able to move forward" do
        @rover.send('F')
        expect(@rover.position).to eq({:x => 6, :y => 5})
      end
      it "should be able to move backwards" do
        @rover.send('B')
        expect(@rover.position).to eq({:x => 4, :y => 5})
      end
      it "should stay facing east after moving forward" do
        @rover.send('F')
        expect(@rover.facing).to eq(:e)
      end
      it "should stay facing east after moving backwards" do
        @rover.send('B')
        expect(@rover.facing).to eq(:e)      
      end
    end
    context "facing west" do
      before(:each) do
        @rover = MarsRover.new 5,5,:w,10,10
      end
      it "should be able to move forward" do
        @rover.send('F')
        expect(@rover.position).to eq({:x => 4, :y => 5})
      end
      it "should be able to move backwards" do
        @rover.send('B')
        expect(@rover.position).to eq({:x => 6, :y => 5})
      end
      it "should stay facing west after moving forward" do
        @rover.send('F')
        expect(@rover.facing).to eq(:w)
      end
      it "should stay facing west after moving backwards" do
        @rover.send('B')
        expect(@rover.facing).to eq(:w)
      end
    end
  end
  describe "pivoting" do
    context "facing west" do
      before(:each) do
        @rover = MarsRover.new 5,5,:w,10,10
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
        @rover = MarsRover.new 5,5,:e,10,10
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
        @rover = MarsRover.new 5,5,:s,10,10
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
        @rover = MarsRover.new 5,5,:n,10,10
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