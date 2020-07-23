class CartsController < ApplicationController

  
  # GET: /carts/new
  get "/carts/new" do
    erb :"/carts/new.html"
  end
  
  # create cart
  post "/carts" do
    # redirect to cart
    redirect "/carts/:id"
  end
  
  # GET: /carts/5
  get "/carts/:id" do
    erb :"/carts/show.html"
  end
  
  # GET: /carts/5/edit
  get "/carts/:id/edit" do
    erb :"/carts/edit.html"
  end
  
  # PATCH: /carts/5
  patch "/carts/:id" do
    # update cart
    redirect "/carts/:id"
  end
  
  # DELETE: /carts/5/delete
  delete "/carts/:id/delete" do
    # delete the cart
    # redirect to /game/:game_id
    redirect "/"
  end

  # GET: /carts
  # get "/carts" do
  #   erb :"/carts/index.html"
  # end

end
