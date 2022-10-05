class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.boolean :win
      t.boolean :loss
      t.integer :game
      t.integer :user_id
      
      t.timestamps
    end
  end
end
