class Ball
  def initialize(ball_type = 'regular')
    @ball_type = ball_type
  end
  def ball_type
    @ball_type
  end
end

ball1 = Ball.new
ball2 = Ball.new "super"
ball1.ball_type  #=> "regular"
ball2.ball_type  #=> "super"