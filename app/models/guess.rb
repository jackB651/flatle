class Guess < ApplicationRecord
    belongs_to :word
    belongs_to :user

    # validates :guess_1, :guess_2, :guess_3, :guess_4, :guess_5, length: {maximum: 5}
end
