class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.references :document_type, foreign_key: true
      t.string :name
      t.string :route
      t.references :state, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
