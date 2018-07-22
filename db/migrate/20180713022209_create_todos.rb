class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
    t.string :body
    t.integer :user_id, foreign_key: true
    t.integer :twitter_id, limit: 8, foreign_key: true
    t.timestamps
    end
  end
end
