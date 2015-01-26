class RenameOrdersTempletsOrdersTemplates < ActiveRecord::Migration
  def change
  	rename_table :orders_templetes, :orders_templates
  end
end
