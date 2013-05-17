class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string  :guess
      t.boolean :correct?
      t.integer :round_id, :card_id
    end
  end
end
