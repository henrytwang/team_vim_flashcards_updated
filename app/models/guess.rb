class Guess < ActiveRecord::Base

  belongs_to :user
  belongs_to :round
  belongs_to :card

  def self.guess_correct?(card)
    card.answer.downcase == self.guess.downcase
  end

end
