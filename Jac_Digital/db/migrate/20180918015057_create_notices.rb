class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.string :tittle
      t.string :body
      t.string :image
      t.date :date

      t.timestamps
    end
  end
end
