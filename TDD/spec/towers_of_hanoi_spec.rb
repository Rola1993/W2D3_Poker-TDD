require "towers_of_hanoi.rb"
require 'rspec' 

RSpec.describe TowersOfHanoi do 
  subject(:new_game) { TowersOfHanoi.new }
  
  # describe "#move" do
  describe "#initialize" do
    it "initialize a array of length three" do
      expect(new_game.towers.length).to eq(3)
      expect(new_game.towers).to be_a(Array)
    end
    
  end
  
  describe "#move" do 
    it "gets move from user" do 
       new_game.move(0,1)
       expect(new_game.towers[0]).to eq([3,2])
       expect(new_game.towers[1]).to eq([1])
    end 
    it "raise error when from_tower is empty" do 
      expect{ new_game.move(2,0) }.to raise_error("invalid input")
    end
  end 
  
end