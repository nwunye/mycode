class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  
  def initialize
    @cards = []
      @cards << Card.new(1, :Spades)
      @cards << Card.new(2, :Spades)
      @cards << Card.new(3, :Spades)
      @cards << Card.new(4, :Spades)
      @cards << Card.new(5, :Spades)
      @cards << Card.new(6, :Spades)
      @cards << Card.new(7, :Spades)
      @cards << Card.new(8, :Spades)
      @cards << Card.new(9, :Spades)
      @cards << Card.new(10, :Spades)
      @cards << Card.new(:Jack, :Spades)
      @cards << Card.new(:Queen, :Spades)
      @cards << Card.new(:King, :Spades)
      @cards << Card.new(1, :Hearts)
      @cards << Card.new(2, :Hearts)
      @cards << Card.new(3, :Hearts)
      @cards << Card.new(4, :Hearts)
      @cards << Card.new(5, :Hearts)
      @cards << Card.new(6, :Hearts)
      @cards << Card.new(7, :Hearts)
      @cards << Card.new(8, :Hearts)
      @cards << Card.new(9, :Hearts)
      @cards << Card.new(10, :Hearts)
      @cards << Card.new(:Jack, :Hearts)
      @cards << Card.new(:Queen, :Hearts)
      @cards << Card.new(:King, :Hearts)
      @cards << Card.new(1, :Clubs)
      @cards << Card.new(2, :Clubs)
      @cards << Card.new(3, :Clubs)
      @cards << Card.new(4, :Clubs)
      @cards << Card.new(5, :Clubs)
      @cards << Card.new(6, :Clubs)
      @cards << Card.new(7, :Clubs)
      @cards << Card.new(8, :Clubs)
      @cards << Card.new(9, :Clubs)
      @cards << Card.new(10, :Clubs)
      @cards << Card.new(:Jack, :Clubs)
      @cards << Card.new(:Queen, :Clubs)
      @cards << Card.new(:King, :Clubs)
      @cards << Card.new(1, :Diamonds)
      @cards << Card.new(2, :Diamonds)
      @cards << Card.new(3, :Diamonds)
      @cards << Card.new(4, :Diamonds)
      @cards << Card.new(5, :Diamonds)
      @cards << Card.new(6, :Diamonds)
      @cards << Card.new(7, :Diamonds)
      @cards << Card.new(8, :Diamonds)
      @cards << Card.new(9, :Diamonds)
      @cards << Card.new(10, :Diamonds)
      @cards << Card.new(:Jack, :Diamonds)
      @cards << Card.new(:Queen, :Diamonds)
      @cards << Card.new(:King, :Diamonds)
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.pop
  end

  def show_deck
    @cards.each do |card|
      card.output_card
    end
  end

end

deck = Deck.new
deck.shuffle
deck.deal.output_card
puts
deck.show_deck