class RemoveTemplateOrderIdFromOrders < ActiveRecord::Migration
  def change
  	remove_column :orders, :templete_order_id
  end
end
