class RenameColumnsInLikes < ActiveRecord::Migration[7.0]
  def change
    rename_column :likes, :post_id_id, :post_id
    rename_column :likes, :user_id_id, :author_id
  end
end
