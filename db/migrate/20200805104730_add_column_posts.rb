class AddColumnPosts < ActiveRecord::Migration[6.0]
  def up
    add_column :posts, :user_id, :integer
  end
end
