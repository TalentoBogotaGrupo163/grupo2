class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.references :position, foreign_key: true
      t.string :name
      t.bigint :id_number
      t.date :date_initial
      t.date :date_end
      t.references :phone, foreign_key: true
      t.string :email
      t.references :company, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
