class CreateJoinTableCompanyPhone < ActiveRecord::Migration[5.2]
  def change
    create_join_table :companies, :phones do |t|
      # t.index [:company_id, :phone_id]
      # t.index [:phone_id, :company_id]
    end
  end
end
