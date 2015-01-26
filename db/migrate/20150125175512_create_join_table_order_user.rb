class CreateJoinTableOrderUser < ActiveRecord::Migration
  def change
    create_join_table :orders, :users do |t|
       t.index [:order_id, :user_id]
       t.index [:user_id, :order_id]
    end
  end
end
