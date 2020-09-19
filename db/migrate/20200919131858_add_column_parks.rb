class AddColumnParks < ActiveRecord::Migration[6.0]
  def up
    add_column :parks, :user_id, :integer
  end
end
