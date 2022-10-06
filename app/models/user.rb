class User < ApplicationRecord
    has_secure_password
    has_many :results
    has_many :guesses
    has_many :words, through: :guesses

    validates :username, presence: true, uniqueness: true
end
