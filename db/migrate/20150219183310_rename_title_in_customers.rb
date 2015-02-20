class RenameTitleInCustomers < ActiveRecord::Migration
  def change
  	remove_column :customers, :title
  	add_column :customers, :title_id, :integer
  end
end
