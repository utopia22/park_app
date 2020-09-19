class ChangePostsToParks < ActiveRecord::Migration[6.0]
  def change
    rename_table :posts, :parks
  end
end
