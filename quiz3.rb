class Woman
  attr_accessor :name, :swear_word

  def initialize(name, swear_word="Heck")
    @name = name
    @swear_word = swear_word
  end

  def friend
    puts "As your friend, " + @name + " will watch your dog for you."
    puts "But will she clean your house? " + @swear_word + ", no!"
  end

  def fiance
    puts "As your fiance, " + @name + " will loan you some money if you're broke."
    puts "But will she pay your bills? " + @swear_word + ", no!"
  end

  def wife
    puts "As your wife, " + @name + " will have your children."
    puts "But will she act like YO mama? " + @swear_word + ", no!"
  end

end

woman = Woman.new("Timma")
woman.friend
woman.fiance
woman.wife