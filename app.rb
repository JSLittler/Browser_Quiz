require 'sinatra/base'
require './lib/player.rb'
require './lib/model'

class Browser_Quiz < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:player_name])
    redirect 'questions'
  end

  before do
    @player = Player.instance
  end

  get '/questions' do
    @player_name = @player.name
    erb :questions
  end

end
