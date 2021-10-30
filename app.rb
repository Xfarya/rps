require 'sinatra/base'
require "sinatra"
require "sinatra/reloader"
require "./lib/game"
require "./lib/player"

class RPS < Sinatra::Base
    register Sinatra::Reloader
    enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player.name
    erb :play
  end

  post '/play' do
    $choice = Game.new(params[:choose])
    redirect '/chosen'
  end

 get '/chosen' do
    @choice = $choice.choice
    @player = $player.name
    erb :chosen
  end

  run! if app_file == $0
end