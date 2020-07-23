class Game < ActiveRecord::Base
    belongs_to :carts
    belongs_to :gamers 
end
