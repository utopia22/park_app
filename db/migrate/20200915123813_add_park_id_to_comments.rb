class AddParkIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :park_id, :integer
  end
end
