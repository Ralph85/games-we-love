class GamesController < ApplicationController

   get "/games/new" do
    erb :"/games/new.html"
  end
  
  # Create games
  post "/games" do
    # redirect "/games/#{game.id}"
    redirect "/games"
  end
  
  # gets cart for game
  get "/games/:id" do
    erb :"/games/show.html"
  end

  # get "/games" do
  #   erb :"/games/index.html"
  # end
  
  # GET: /games/5/edit
  # get "/games/:id/edit" do
  #   erb :"/games/edit.html"
  # end

  # PATCH: /games/5
  # patch "/games/:id" do
  #   redirect "/games/:id"
  # end

  # DELETE: /games/5/delete
  # delete "/games/:id/delete" do
  #   redirect "/games"
  # end
end
