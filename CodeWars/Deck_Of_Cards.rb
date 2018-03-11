# class Card
#   attr_accessor :rank, :suit

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end

#   def self.random_card
#   # def Card.random_card
#     Card.new(rand(1..10), [:Spades, :Hearts, :Diamonds, :Clubs].sample)
#   end

#   def output_card
#     puts "#{self.rank} of #{self.suit}"
#     # puts "#{@rank} of #{@suit}"
#   end

# end


# class Deck
#   def initialize
#     @cards = []
#     @cards << Card.new(10, :Spades)
#     @cards << Card.new(9, :Diamonds)
#     @cards << Card.new(:Jack, :Hearts)
#     @cards << Card.new(:Queen, :Diamonds)
#     @cards << Card.new(2, :Hearts)
#   end

#   def shuffle_deck
#     @cards.shuffle!
#   end

#   def pull_card
#     @cards.pop
#   end

#   def output
#     @cards.each do |card|
#       card.output_card
#     end
#   end
# end

# deck = Deck.new
# deck.shuffle_deck.output
# deck.pull_card.output
