class CreateJoinTableMemberPhone < ActiveRecord::Migration[5.2]
  def change
    create_join_table :members, :phones do |t|
      # t.index [:member_id, :phone_id]
      # t.index [:phone_id, :member_id]
    end
  end
end
