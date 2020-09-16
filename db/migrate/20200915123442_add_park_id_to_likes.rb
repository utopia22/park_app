class AddParkIdToLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :park_id, :integer
  end
end
