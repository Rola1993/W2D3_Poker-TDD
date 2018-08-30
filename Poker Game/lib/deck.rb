
class Deck
  attr_accessor :storage

  def initialize
    @storage = []
    [:C,:D,:H,:S].each do |suit|
      (2..14).each do |number|
        @storage << Card.new(suit,number)
      end
    end
  end

  def give_card
    card = @storage.shift
    card
  end

  def receive_card(cards)
    @storage += cards
  end
end
