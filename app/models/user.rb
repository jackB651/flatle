class User < ApplicationRecord
    has_many :results
    has_many :guesses
    has_many :words, through: :guesses
end
