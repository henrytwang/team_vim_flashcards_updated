class Card < ActiveRecord::Base

  has_many :guesses
  has_many :rounds, :through => :guesses
  belongs_to :deck

  def correct?(answer)
    self.answer == answer
  end

end
