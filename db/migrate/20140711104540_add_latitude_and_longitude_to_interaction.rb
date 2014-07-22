class AddLatitudeAndLongitudeToInteraction < ActiveRecord::Migration
  def change
    add_column :interactions, :latitude, :float
    add_column :interactions, :longitude, :float
  end
end
