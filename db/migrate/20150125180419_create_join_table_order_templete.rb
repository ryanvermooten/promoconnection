class CreateJoinTableOrderTemplete < ActiveRecord::Migration
  def change
    create_join_table :orders, :templetes do |t|
    	t.string :quantity
      # t.index [:order_id, :templete_id]
       t.index [:templete_id, :order_id]
    end
  end
end
