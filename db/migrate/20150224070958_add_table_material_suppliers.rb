class AddTableMaterialSuppliers < ActiveRecord::Migration
  def change
   create_table :materials_suppliers do |t|
    t.integer :material_id
    t.integer :supplier_id
    t.decimal :price

    t.timestamps
  end
  end
end
