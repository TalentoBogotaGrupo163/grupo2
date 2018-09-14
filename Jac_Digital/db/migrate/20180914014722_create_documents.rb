class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.references :document_type, foreign_key: true
      t.string :name
      t.string :route
      t.references :company, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
