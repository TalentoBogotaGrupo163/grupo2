class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.integer :type_phone
      t.bigint :number
      t.integer :company
      t.integer :user
      t.integer :venue
      t.integer :member
      t.integer :police_area

      t.timestamps
    end
  end
end
