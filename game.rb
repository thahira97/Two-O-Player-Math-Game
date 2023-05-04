class Game
  attr_accessor :current_player

  def initialize
    @players = [
      Player.new("Player 1"),
      Player.new("Player 2")
    ]
    @current_player = @players[0]
  end

  def play
    while @players[0].lives > 0 && @players[1].lives > 0 do

      question = Question.new

      puts "#{@current_player.name}: #{question.ques_to_ask}"
      print "> "
      player_response = gets.chomp.to_i
      result = question.check_answer(player_response)
      #calling the method to check the answer
      check_answer(result)
    end
    game_lost
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def check_answer(response)
    if response == false
      @current_player.lives -= 1
      puts "#{@current_player.name}: Seriously? No!"
    else
      puts "#{@current_player.name}: YES! You are correct."
    end
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
    #calling the method to take turns
    switch_player
    unless @players[0].lives == 0 || @players[1].lives == 0
      puts "----- NEW TURN -----"
    end
  end

  def switch_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

  def game_lost
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
  end

end
