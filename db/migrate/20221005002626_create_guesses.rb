class CreateGuesses < ActiveRecord::Migration[7.0]
  def change
    create_table :guesses do |t|
      t.string :guess_1
      t.string :guess_2
      t.string :guess_3
      t.string :guess_4
      t.string :guess_5
      t.integer :user_id
      t.integer :word_id

      t.timestamps
    end
  end
end
