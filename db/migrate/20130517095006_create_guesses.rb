class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string  :guess
      t.boolean :correct?
      t.integer :user_id
    end
  end
end
