class CreatePoliceAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :police_areas do |t|
      t.string :area_name
      t.integer :id_area

      t.timestamps
    end
  end
end
