class AddTagListToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :tag_list, :string
  end
end
