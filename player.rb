class Player
  attr_accessor :lives, :name, :id

  def initialize (name)
    @name = name
    @lives = 3
  end

  def lose_life
    lives -= 1
  end

end