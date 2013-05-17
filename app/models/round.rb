class Round < ActiveRecord::Base
  
  belongs_to :deck
  belongs_to :user
  has_many :guesses
  has_many :cards, :through => :guesses
  
end
