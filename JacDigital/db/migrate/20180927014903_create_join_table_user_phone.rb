class CreateJoinTableUserPhone < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :phones do |t|
      # t.index [:user_id, :phone_id]
      # t.index [:phone_id, :user_id]
    end
  end
end
