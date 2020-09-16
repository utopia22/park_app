class RenameParkColumnToParks < ActiveRecord::Migration[6.0]
  def change
    rename_column :parks, :park, :park_name
  end
end
