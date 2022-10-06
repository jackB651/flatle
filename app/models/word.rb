class Word < ApplicationRecord
    has_many :guesses
    has_many :users, through: :guesses

end
