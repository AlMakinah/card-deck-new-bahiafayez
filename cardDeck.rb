class Card

  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def to_s
    [@rank, @suit]
  end

end

class CardDeck
  attr_accessor :cards # cards is a list of Card objects

  def initialize
    @cards = []
    initializeDeck
  end

  def initializeDeck
    suits = ['H', 'S', 'D', 'T']
    ranks = 1..13

    ranks.each do |r|
      suits.each do |s|
        @cards << Card.new(s,r)
      end
    end
  end

  private :initializeDeck

  def shuffle
    @cards.shuffle!
  end

  def peek
    @cards.first
  end

  def deal  #removes first element and returns it.
    @cards.shift
  end

  def size
    @cards.size
  end

  def to_s
    @cards.map do |c|
      c.to_s
    end
  end

end


deck = CardDeck.new
deck.shuffle
p deck.to_s
p deck.peek.to_s
p deck.deal.to_s
p deck.to_s
p deck.size
