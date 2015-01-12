require 'sinatra/base'
require_relative "lib/random_rps"

class Game < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  get '/player' do
    erb :player
  end

  get '/game' do
    @player = params[:name]

    erb :game
  end

  get '/selection' do
    @selection = params[:pick]
    win = RockPaperScissors.play(@selection)
    if win == "Win"
      erb :win
    elsif win == "Lose"
       erb :lose
    else
      erb :tie
    end
      
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
