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


  run! if app_file == $0
end