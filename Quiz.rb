class Question
attr_accessor :display, :answer
  def initialize(display, answer)
    @display = display
    @answer = answer
  end
end

q1 = "9 + 6 = ?\n (a)10 \n (b) 11 \n (c) 18 \n (d) 15"
q2 = "5 + 6 = ?\n (a)10 \n (b) 11 \n (c) 18 \n (d) 15"
q3 = "2 + 16 = ?\n (a)10 \n (b) 11 \n (c) 18 \n (d) 15"

questions = [
  Question.new(q1, "d"),
  Question.new(q2, "b"),
  Question.new(q3, "c")
]

def run_quiz(questions)
  answer = ""
  score = 0
  for question in questions
    puts question.display
    answer = gets.chomp()

    if answer == question.answer
      score += 1
    end
  end
  puts "You got #{score}/#{questions.length()}"
end

run_quiz(questions)
