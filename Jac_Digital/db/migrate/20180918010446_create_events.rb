class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.references :state, foreign_key: true
      t.date :date_initial
      t.date :date_end
      t.time :hour_initial
      t.time :hour_end
      t.references :venue, foreign_key: true
      t.string :value
      t.string :organizer
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
