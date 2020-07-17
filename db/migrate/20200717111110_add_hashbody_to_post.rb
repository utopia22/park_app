class AddHashbodyToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :hashbody, :text
  end
end
