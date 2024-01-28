class QuestionsController < ApplicationController
  STOP_MESSAGE = "I am going to work right now!"

  def ask
  end

  def answer
    @question = params[:your_message]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
