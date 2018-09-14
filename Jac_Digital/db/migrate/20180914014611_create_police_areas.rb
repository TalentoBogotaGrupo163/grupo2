class CreatePoliceAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :police_areas do |t|
      t.string :area_name
      t.integer :id_area
      t.references :phone, foreign_key: true

      t.timestamps
    end
  end
end
