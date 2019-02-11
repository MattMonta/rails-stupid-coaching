class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:question]
    if @query.include?('?')
      @answer = 'Silly question, get dressed and go to work !'
    elsif @query == 'I am going to work right now SIR !'
      @answer = "Great!"
    else
      @answer = "I don't care son, get dressed and go to work !"
    end
  end
end
