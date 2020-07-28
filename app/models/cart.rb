class Cart < ActiveRecord::Base
  # frozen_string_literal: true
  has_many :games
end
