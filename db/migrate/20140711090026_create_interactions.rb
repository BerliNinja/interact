class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :interaction
      t.text :description
      t.string :picture
      t.string :interactor
      t.string :interacted

      t.timestamps
    end
  end
end
