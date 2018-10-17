class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :mayor_name
      t.bigint :id_number
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
