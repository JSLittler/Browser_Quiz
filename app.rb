require 'sinatra/base'
require './lib/player'
require './lib/question'
require './lib/model'

class Browser_Quiz < Sinatra::Base
  enable :sessions

  before do
    @player = Player.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:player_name])
    redirect 'questions'
  end

  get '/questions' do
    @player_name = @player.name
    @question_current = Question.new
    @question = @question_current.set_question
    @answer_A = @question_current.set_answer_a
    @answer_B = @question_current.set_answer_b
    @answer_C = @question_current.set_answer_c
    session[:correct_answer] = @question_current.set_correct_answer
    erb :questions
  end

  post '/answer' do
    session[:answer] = params[:answer]
    redirect 'feedback'
  end

  get '/feedback' do
    @player_name = @player.name
    @correct_answer = session[:correct_answer]
    @player_answer = session[:answer]
    if @player_answer == @correct_answer
      @result = "Well done, that is correct."
    else
      @result = "Sorry, that answer was wrong."
    end
    erb :feedback
  end

end
