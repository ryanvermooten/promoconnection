class AddColumnsToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :due_at, :datetime
  end
end
