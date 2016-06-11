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
    redirect '/multiplayer'
  end

  post '/player' do
    player_1 = Player.new(params[:single_player_name])
    player_2  = Computer.new
    @game = RPS.create(player_1, player_2)
    redirect '/single'
  end

  get '/multiplayer' do
    erb :play
  end

  get '/single' do
    erb :single_play
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
