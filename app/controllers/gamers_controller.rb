# Manages gamers-based routing , helper, sessions
class GamersController < ApplicationController
  get '/signup' do
    erb :'/gamers/new.html'
  end

  get '/login' do
    erb :'/gamers/login.html'
  end

  post '/login' do
    redirect '/gamers/:id'
  end

  post '/logout' do
    redirect '/'
  end

  # GET: /gamers/5
  get '/gamers/:id' do
    erb :'/gamers/show.html'
  end

  # POST: /gamers
  post '/gamers/new' do
    # gamer = params
    # Gamer.create()
    redirect '/login'
  end

  # GET: /gamers
  # get '/gamers' do
  #   erb :'/gamers/index.html'
  # end

  # GET: /gamers/5/edit
  # get '/gamers/:id/edit' do
  #   erb :'/gamers/edit.html'
  # end

  # PATCH: /gamers/5
  # patch '/gamers/:id' do
  #   redirect '/gamers/:id'
  # end

  # DELETE: /gamers/5/delete
  # delete '/gamers/:id/delete' do
  #   redirect '/gamers'
  # end
end
