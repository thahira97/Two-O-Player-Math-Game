class Question 
  attr_accessor :num1, :num2, :answer

 def initialize
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  @answer = @num1 + @num2
 end
 
 def ques_to_ask
  puts "What does #{@num1} plus #{@num2} equal?"
 end

 def check_answer(userinput)
  if @answer == userinput 
  
  true
  else
  false
  end
 end
end
