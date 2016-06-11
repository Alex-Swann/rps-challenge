require 'sinatra/base'
require_relative 'lib/rps.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = RPS.instance
  end

  get '/' do
    erb :index
  end

  post '/players' do
    player_1 = Player.new(params[:player_1_name])
    player_2  = Player.new(params[:player_2_name])
    @game = RPS.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
