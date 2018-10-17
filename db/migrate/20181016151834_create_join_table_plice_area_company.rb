class CreateJoinTablePliceAreaCompany < ActiveRecord::Migration[5.2]
  def change
    create_join_table :policeAreas, :companies do |t|
      # t.index [:police_area_id, :company_id]
      # t.index [:company_id, :police_area_id]
    end
  end
end
