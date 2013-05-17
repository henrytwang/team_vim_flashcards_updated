class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :deck_id, :user_id, :number_of_guesses, :number_of_correct
    end
  end
end
