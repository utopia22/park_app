class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :park
      t.string :outline
      t.string :location
      t.string :access

      t.timestamps
    end
  end
end
