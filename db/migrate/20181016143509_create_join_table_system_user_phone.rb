class CreateJoinTableSystemUserPhone < ActiveRecord::Migration[5.2]
  def change
    create_join_table :systemUsers, :phones do |t|
      # t.index [:system_user_id, :phone_id]
      # t.index [:phone_id, :system_user_id]
    end
  end
end
