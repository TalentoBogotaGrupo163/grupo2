class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.integer :id_department
      t.string :name
      t.string :initial

      t.timestamps
    end
  end
end
