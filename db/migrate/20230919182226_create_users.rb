class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :user do |t|
      t.string :name
      t.string :photo
      t.text :bio
      # t.datetime :updated_at
      # t.datetime :created_at
      t.integer :posts_counter, default: 0
      t.timestamps
    end
  end
end
