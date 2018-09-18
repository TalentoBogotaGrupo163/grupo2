class CreateNetworks < ActiveRecord::Migration[5.1]
  def change
    create_table :networks do |t|
      t.string :name
      t.string :url
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
