class Question
  attr_reader :num1, :num2, :answer

  def initialize
    @num1 = rand(0...20)
    @num2 = rand(0...20)
    @answer = @num1 + @num2
  end

  def ques_to_ask
    "What does #{@num1} plus #{@num2} equal?"
  end

  def check_answer(useranswer)
    @answer == useranswer
  end

end
