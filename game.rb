class Game
 
 def initialize
  @players = [
    Player.new('Player 1'),
    Player.new('Player 2')
  ]
  @current_player = @players[0]
 end

 def play
  while @players[0].lives > 0 && @players[1].lives > 0 do
    question = Question.new()
    puts "#{@current_player.name}: #{question.ques_to_ask}"
    player_response = gets.chomp.to_i
    result = question.check_answer(player_response)
 end
end
end