class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_table :comment do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.datetime :updated_at
      t.datetime :created_at
      t.timestamps
    end
  end
end
