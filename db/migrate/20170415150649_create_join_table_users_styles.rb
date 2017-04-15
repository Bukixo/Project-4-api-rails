class CreateJoinTableUsersStyles < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :styles do |t|
      # t.index [:user_id, :style_id]
      # t.index [:style_id, :user_id]
    end
  end
end
