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
    @pick = params[:pick]
    selection = RockPaperScissors.pick
    @selection = selection
    win = RockPaperScissors.play(@pick)
    puts selection
    puts @pick
    puts win
    if win == "Win"
      erb :win
    elsif win == "Lose"
      erb :lose
    else
      erb :tie
    end
      
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
