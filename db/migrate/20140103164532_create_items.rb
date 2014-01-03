class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :facility_id
      t.boolean :dairy
      t.boolean :fish
      t.boolean :peanuts
      t.boolean :tree_Nuts
      t.boolean :eggs
      t.boolean :wheat_gluten
      t.boolean :soy
      t.boolean :crusta
      t.string  :same_Line, :array => true
      t.timestamps
    end
  end
end
