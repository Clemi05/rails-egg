class AddCoordinatesToHens < ActiveRecord::Migration[6.0]
  def change
    add_column :hens, :latitude, :float
    add_column :hens, :longitude, :float
  end
end
