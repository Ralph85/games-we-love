class Game < ActiveRecord::Base
  # frozen_string_literal: true
  belongs_to :carts
  belongs_to :gamers
end
