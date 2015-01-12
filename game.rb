require 'sinatra/base'
require_relative = "/lib/random_rps.rb"

class Game < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  get '/player' do
    @player = params[:name]
    session[:name]= @player
    erb :player
  end

  get '/game' do
    @player = params[:name]
    erb :game
  end

  get '/tie' do
    erb :tie
  end

  get '/lose' do
    erb :lose
  end

  get '/win' do
    erb :win
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
