require_relative './card'
require_relative './hand'

class Deck

  def self.all_cards
    deck = []
    Card.suits.each do |suit|
      Card.values.each do |value|
        deck << Card.new(suit,value)
      end
    end
    deck
  end

  def initialize(cards = Deck.all_cards)
    @cards = cards
  end

  def deal_hand
    deal_cards = take(5)
    return Hand.new(deal_cards)
  end

  def count
    @cards.count
  end

  def take(n)
    raise "not enough cards" if n > count
    take_cards = @cards.take(n)
    @cards = @cards.drop(n)
    take_cards
  end

  def return(cards)
    @cards += cards
  end

  def shuffle
    @cards.shuffle!
  end

  private
  attr_accessor :cards
end
