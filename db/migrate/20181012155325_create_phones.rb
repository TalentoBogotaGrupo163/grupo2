class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :type_phone
      t.bigint :number

      t.timestamps
    end
  end
end
