class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :post do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text : text
      t.datetime :updated_at
      t.datetime :created_at
      t.integer :comments_counter, default: 0
      t.integer :Likes_counter, default: 0
      t.timestamps
    end
  end
end
