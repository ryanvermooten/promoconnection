class RenameColumnOrderTemplets < ActiveRecord::Migration
  def change
  	rename_column :orders_templates, :templete_id, :template_id
  end
end
