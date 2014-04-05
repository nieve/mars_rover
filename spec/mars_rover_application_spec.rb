require "spec_helper"

describe "MarsRoverApplication" do
  describe "moving the rover" do
    it "should follow the given steps" do
      result = MarsRoverApplication.run 0,0,:n,100,100,"FFRFF"
      expect(result).to eq({x: 2, y: 2, facing: :e})
    end
    it "should wrap the grid edges to move ahead on both vectors" do
      result = MarsRoverApplication.run 97,98,:e,100,100,"FFFFRRRFFF"
      expect(result).to eq({x: 1, y: 1, facing: :n})
    end
    it "should wrap the grid edges to move behind on both vectors" do
      result = MarsRoverApplication.run 2,3,:w,100,100,"FFFFRRRFFFF"
      expect(result).to eq({x: 98, y: 99, facing: :s})
    end
    it "should wrap the grid edges to move ahead and behind" do
      result = MarsRoverApplication.run 2,98,:w,100,100,"FFFFFRFFFLL"
      expect(result).to eq({x: 97, y: 1, facing: :s})
    end
    it "should be able to orbit both vectors" do
      result = MarsRoverApplication.run 2,0,:w,10,10,"FFFFFFFFFFFRFFFFFFFFFFF"
      expect(result).to eq({x: 1, y: 1, facing: :n})
    end
    it "should stop at the position before hitting an obstacle" do
      result = MarsRoverApplication.run 68,56,:w,100,100,"FRBRRFFLBBBRRFFFFFLLBBLBRRFFF",[{x: 63, y: 53}]
      expect(result).to eq({x: 64, y: 53, facing: :w})
    end
  end
end