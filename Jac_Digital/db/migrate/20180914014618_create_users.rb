class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.references :role, foreign_key: true
      t.string :email
      t.references :phone, foreign_key: true
      t.string :user
      t.references :state, foreign_key: true
      t.Date :birth

      t.timestamps
    end
  end
end
