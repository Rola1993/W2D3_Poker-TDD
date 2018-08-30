require "rspec"
require "card.rb"
require "deck.rb"


RSpec.describe Deck do
  subject(:deck) { Deck.new }
  let(:card) {Card.new(:C,5)}

  describe "#initialize" do
    it "has 52 cards" do
      expect(deck.storage.length).to eq(52)
      expect(deck.storage).to be_a(Array)
    end
  end

  describe "#get_card" do
    it "give a card from the top of the deck" do
      deck.give_card
      expect(deck.storage.length).to eq(51)
      expect(deck.give_card).to be_a(Card)
    end
  end

  describe "#receive_card" do
    it "put received cards to bottom" do
      deck.receive_card([card])
      expect(deck.storage.length).to eq(53)
    end
  end
end
