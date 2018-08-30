require 'rspec'
require "card.rb"

RSpec.describe Card do
  subject(:new_card) { Card.new(:C,2) }

  describe "#initialize" do
    it "sets a number" do
      expect(new_card.num).to eq(2)
    end
    it "sets a suit" do
      expect(new_card.suit).to eq(:C)
    end
  end
end
