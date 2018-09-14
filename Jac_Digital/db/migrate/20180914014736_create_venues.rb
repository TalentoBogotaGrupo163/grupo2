class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.references :phone, foreign_key: true
      t.integer :capacity

      t.timestamps
    end
  end
end
