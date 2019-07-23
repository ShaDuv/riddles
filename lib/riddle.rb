class Riddles
  attr_accessor :question, :answer
  def initialize
  @question = question
  @answer = answer
  end

def answer_check(answer)
  answer.include?@riddle_answers[1]
end
end
