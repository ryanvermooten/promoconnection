class CreateJoinTableMaterialSupplier < ActiveRecord::Migration
  def change
    create_join_table :Materials, :Suppliers do |t|
       t.index [:material_id, :supplier_id]
      # t.index [:supplier_id, :material_id]
    end
  end
end
