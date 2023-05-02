class Game
 
 def initialize
  @players = [
    Player.new('Player 1'),
    Player.new('Player 2')
  ]
  @current_player = @player[0]
end