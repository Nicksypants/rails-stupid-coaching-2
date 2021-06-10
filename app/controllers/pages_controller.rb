class PagesController < ApplicationController
  def ask
  end

  def answer
    @response = params[:ask]
    @test = "Hello"
    if @response == "I am going to work"
      @answer = "Great!"
    elsif @response.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
