class CreateJoinTablePoliceAreaPhone < ActiveRecord::Migration[5.2]
  def change
    create_join_table :policeAreas, :phones do |t|
      # t.index [:police_area_id, :phone_id]
      # t.index [:phone_id, :police_area_id]
    end
  end
end
