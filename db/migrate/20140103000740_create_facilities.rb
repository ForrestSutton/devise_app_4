class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :facilityName
      t.integer :facility_id
      t.boolean :dairy
      t.boolean :fish
      t.boolean :peanuts
      t.boolean :tree_Nuts
      t.boolean :eggs
      t.boolean :wheat_gluten
      t.boolean :soy
      t.boolean :crusta

      t.timestamps
    end
    add_index :facilities, [:facility_id]
  end
end
