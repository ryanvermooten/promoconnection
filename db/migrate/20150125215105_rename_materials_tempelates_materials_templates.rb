class RenameMaterialsTempelatesMaterialsTemplates < ActiveRecord::Migration
  def change
  	rename_table :Materials_Templates, :materials_templates
  end
end
