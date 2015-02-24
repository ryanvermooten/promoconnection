class DropTableMaterialSuppliers < ActiveRecord::Migration
  def change
    drop_table :materials_suppliers
  end
end
