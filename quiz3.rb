class Woman
  attr_accessor :name, :swear_word

  def initialize(name, swear_word)
    @name = name
    @swear_word = swear_word
  end

  def friend
    puts @name + " will watch your dog for you."
    puts "But will she clean your house? " + @swear_word + ", no!"
  end

  def fiance
    puts @name + " will loan you some money if you're broke."
    puts "But will she pay your bills? " + @swear_word + ", no!"
  end

  def wife
    puts @name + " will have your children."
    puts "But will she act like YO mama? " + @swear_word + ", no!"
  end

end

woman = Woman.new("Tina", "Heck")
woman.friend
woman.fiance
woman.wife