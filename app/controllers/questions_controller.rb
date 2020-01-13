class QuestionsController < ApplicationController
  def ask
  end

  def answer
    answers = {
      1 => "Great!",
      2 => "Silly question, get dressed and go to work!",
      3 => "I don't care, get dressed and go to work!"
    }

    @question = params[:question]

    if @question.blank?
      # @quesiton = "<br>"
      @answer = "What did you say?"
    elsif @question.downcase == "i am going to work"
      @answer = answers[1]
    elsif @question[-1] == "?"
      @answer = answers[2]
    else
      @answer = answers[3]
    end
  end
end
