
class Question
  attr_reader :num1, :num2, :correct_answer
  def initialize()
  end
  
  def ask_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = num1 + num2
    puts "What is #{num1} + #{num2}?"
  end

end