class RenameTableMaterialsSuppliersToMaterialsSuppliers < ActiveRecord::Migration
  def change
  	rename_table :material_suppliers, :materials_suppliers
 	 end
  end

