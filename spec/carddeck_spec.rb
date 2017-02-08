#to run , bundle install then run -> rspec spec from the terminal

require 'spec_helper'

describe CardDeck do 

  before :each do
    @deck = CardDeck.new 
  end

  describe "#new" do
    it 'takes no parameters and returns a CardDeck object' do
      expect(@deck).to be_an_instance_of CardDeck
    end
  end

  describe "size" do
    it 'returns the size of the deck' do
      expect(@deck.size).to eq(52)
    end
  end

  describe "peek" do
    it 'returns the first element in the deck without removing it' do
      peek = @deck.cards[0]
      expect(@deck.peek).to eq(peek)
    end
  end

  describe "deal" do
    it 'returns the first element in the deck and removes it' do
      peek = @deck.cards[0]
      expect(@deck.deal).to eq(peek)
      expect(@deck.size).to eq(51)
    end
  end

  describe "#shuffle" do
    it "should shuffle the deck" do
      olddeckcards = @deck.cards.clone
      @deck.shuffle
      expect(olddeckcards).not_to eq(@deck.cards)
    end
  end
end