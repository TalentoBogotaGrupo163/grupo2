class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :type
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
