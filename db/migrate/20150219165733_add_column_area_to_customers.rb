class AddColumnAreaToCustomers < ActiveRecord::Migration
  def change
  	add_column :customers, :area, :string
  end
end
