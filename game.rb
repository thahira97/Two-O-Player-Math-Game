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

 def validate_answer(res)
  if res == false
    @current_player.lives -= 1
    puts "#{@current_player.name}: Seriously? No!"
  else
    puts "#{@current_player.name}: YES! You are correct."
  end
  puts "#{@players[0]}: #{@players[0].lives}/3 vs #{@players[1]}: #{@players[1].lives}/3"
 end
end