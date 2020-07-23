class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :rating
      t.string :developer
      t.integer :game_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
