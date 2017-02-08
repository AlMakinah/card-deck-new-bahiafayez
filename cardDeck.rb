class Card

  # complete

  def initialize(rank, suit)
    # complete
    @rank = rank
    @suit = suit
  end

  def to_s
    # complete
  end

end


class CardDeck
  attr_accessor :cards # cards is a list of Card objects

  def initialize
    # complete
  end

  def shuffle
    # complete
  end

  def peek
    # complete
  end

  def deal  #removes first element and returns it.
    # complete
  end

  def size
    # complete
  end

  def to_s
    @cards.map do |c|
      c.to_s
    end
  end

end

