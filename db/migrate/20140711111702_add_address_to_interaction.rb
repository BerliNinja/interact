class AddAddressToInteraction < ActiveRecord::Migration
  def change
    add_column :interactions, :address, :text
  end
end
