require_relative './poker_hands'

class Hand
  include PokerHands

  attr_reader :cards

  def initialize(cards)
    raise 'must have five cards' unless cards.count == 5
    @cards = cards.sort
  end

  def self.winner(hands)
    hands.sort.last
  end

  # Use methods below
  def trade_cards(old_cards, new_cards)
    raise "cannot discard unowned card" unless has_cards?(old_cards)
    discard_cards(old_cards)
    take_cards(new_cards)
    raise "must have five cards" unless @cards.count == 5
  end

  def to_s
    cards.join(' ')
  end

  private
  def sort!
    @cards.sort!
  end

  def take_cards(cards)
    @cards.push(*cards)
  end

  def discard_cards(old_cards)
    old_cards.each { |card| cards.delete(card) }
  end

  def has_cards?(old_cards)
    old_cards.all? { |card| cards.include?(card) }
  end
end
