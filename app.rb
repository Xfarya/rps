require 'sinatra/base'
require "sinatra"
require "sinatra/reloader"

class RPS < Sinatra::Base
    register Sinatra::Reloader
    enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/play' do
    session[:choose] = params[:choose]
    redirect '/chosen'
  end

  get '/chosen' do
    @choice = session[:choose]
    @opponent_choice = "Paper"
    erb :chosen
  end

  run! if app_file == $0
end