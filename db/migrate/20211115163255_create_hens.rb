class CreateHens < ActiveRecord::Migration[6.0]
  def change
    create_table :hens do |t|
      t.string :name
      t.string :description
      t.float :rating
      t.integer :price_per_day
      t.string :breed
      t.string :profile_picture
      t.integer :eggs_per_day

      t.timestamps
    end
  end
end
