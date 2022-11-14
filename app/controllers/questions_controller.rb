class QuestionsController < ApplicationController
  def ask() end

  def answer
    @answer_value = "You didn't asked anything"
    @coach_answer = ''

    if params[:question]
      @answer_value = params[:question]
      if @answer_value == 'I am going to work'
        @coach_answer = 'Great!'
      elsif @answer_value.include?('?')
        @coach_answer = 'Silly question, get dressed and go to work!'
      else
        @coach_answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
