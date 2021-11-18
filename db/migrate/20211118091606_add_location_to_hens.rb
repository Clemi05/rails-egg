class AddLocationToHens < ActiveRecord::Migration[6.0]
  def change
    add_column :hens, :location, :string
  end
end
