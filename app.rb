require 'sinatra/base'
require "sinatra"
require "sinatra/reloader"
require "./lib/game"
require "./lib/player"

class RPS < Sinatra::Base
    register Sinatra::Reloader
    enable :sessions

  # before do
  #   @player = Player.instance
  #   @game = Game.instance
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player])
    # computer = 'Computer'
    # $game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @player = $player.name
    # @game = $game
    erb :play
  end

  post '/play' do
    session[:choose] = params[:choose]
    @game = Game.create(@player, @choice)
    redirect '/chosen'
  end

  get '/chosen' do
    # @game = $game
    @choice = session[:choose]
    # @game.winner(@choice)
    erb :chosen
  end

  run! if app_file == $0
end