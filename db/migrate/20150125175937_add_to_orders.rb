class AddToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :customer_id, :integer
  	add_column :orders, :templete_order_id, :integer
  	add_column :orders, :special_notes, :text

  end
end
