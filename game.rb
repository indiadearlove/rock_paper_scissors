require 'sinatra/base'

class Game < Sinatra::Base
  
  get '/' do
    erb :index
  end

  get '/player' do
    erb :player
  end

  get '/player_name' do
    erb :player_name
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
