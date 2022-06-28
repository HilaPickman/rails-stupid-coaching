class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    if params[:question].include?('?')
      return @answers = @answers[1]
    elsif params[:question].downcase == "i am going to work"
      return @answers = @answers[0]
    else
      return @answers = @answers[2]
    end
  end
end
