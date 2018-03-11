class Ghost
  def initialize
    @entry = [:white, :yellow, :purple, :red].sample
  end

  def color
    puts @entry
  end
end

ghost = Ghost.new
ghost.color