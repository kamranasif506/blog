class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_table :comment do |t|
      t.text :body
      t.references :user_id, null: false, foreign_key: { to_table: :user }
      t.references :post_id, null: false, foreign_key: { to_table: :post }
      # t.datetime :updated_at
      # t.datetime :created_at
      t.timestamps
    end
  end
end
