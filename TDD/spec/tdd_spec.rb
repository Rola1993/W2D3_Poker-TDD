require "tdd.rb"

RSpec.describe Array do 
  
  describe "#remove dups" do 
    it "gives unique elements in an array" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
    end
  end 
  
  describe "#two_sum" do 
    it 'finds all pairs of positions' do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end
end

  
  describe "#my_transpose" do 
    it "find transpose of a matrix" do
      expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
  end

  describe "#stock_picker" do 
    it "finds profitable pair of days" do 
      expect(stock_picker([1,5,6,4,3,2,0])).to eq([0,2])
    end
  end