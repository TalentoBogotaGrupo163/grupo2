class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.integer :id_city
      t.string :name
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
