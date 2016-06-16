require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './models/state'

get '/' do
  @states = State.remaining_states
  erb :index
end

post '/submit' do
  @state = State.new(params[:state])
  if @state.save
    redirect '/states'
  else
    "Sorry, server error!"
  end
end

get '/states' do
  @states = State.all.order(:name)
  erb :states
end
