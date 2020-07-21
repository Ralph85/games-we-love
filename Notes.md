Games We Love application

CONTROLLERS
  application
    '/'
    - SHOWS index.erb
  games
   get '/games/:id'
    - SHOWS movie/show
   get '/games/new'
    - SHOWS movie/new
   post '/games'
    - CREATE new game
    - Redirect movie/:id
  cart
   get '/cart/:id'
   - SHOWS game/show
   get '/cart/:id/edit'
   - SHOWS cart/edit 
   get '/cart/new'
   - SHOWS cart/new
   patch '/cart/:id'
    - UPDATES cart with id == :id
    - REDIRECT 'cart/:id'
   post 'cart'
    - CREATES new cart
    - REDIRECT '/cart/:id'
   delete '/cart/:id/delete
    - DELETES cart with id == :id
  gamer
   get '/signup'
   - SHOWS user/signup 
   get '/login'
   - SHOWS user/login 
   post '/logout'
   - CLEAR session
   - REDIRECT to '/'

MODELS
    games
      belongs to user
      belongs to a cart
        attr:name
    cart
      has many games
      is unique
        attr: rating 
        attr: developer
        foreign_key: game_id
        foreign_key: user_id
    gamer
      has many games
      has a secure password
      is unique
        attr: username
        attr: email
        attr: password

VIEWS
    index
      shows the latest cart
      shows registration?
    games
      show.erb = see all games
      new.erb = action: create game > post to /games
    cart
      show.erb = action: delete cart when user > delete to /cart/:id/delete
                > link_to: /cart/:id/edit when user 
      edit.erb = action: update cart when user > patch to /cart/:id
     new.erb = action: create cart
    gamer
      view = see all games
      action: create new user 