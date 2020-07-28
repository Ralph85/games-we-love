class Gamer < ActiveRecord::Base
  # frozen_string_literal: true
  has_secure_password
  has_many :games
end
