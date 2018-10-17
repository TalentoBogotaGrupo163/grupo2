class CreateSystemUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :system_users do |t|
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
