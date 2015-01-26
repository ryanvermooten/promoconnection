class RenameTableMaterialsSuppliersMaterialsSuppliers < ActiveRecord::Migration
  def change
  	rename_table :Materials_Suppliers, :material_suppliers
  end
end
