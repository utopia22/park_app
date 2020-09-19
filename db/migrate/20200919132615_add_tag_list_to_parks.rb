class AddTagListToParks < ActiveRecord::Migration[6.0]
  def change
    add_column :parks, :tag_list, :string
  end
end
