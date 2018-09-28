class CreateJoinTableVenuePhone < ActiveRecord::Migration[5.2]
  def change
    create_join_table :venues, :phones do |t|
      # t.index [:venue_id, :phone_id]
      # t.index [:phone_id, :venue_id]
    end
  end
end
