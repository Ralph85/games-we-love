class CreateGamers < ActiveRecord::Migration
  def change
    create_table :gamers do |t|
      t.srting :username
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
