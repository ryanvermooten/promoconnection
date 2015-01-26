class CreateJoinTableMaterialTemplate < ActiveRecord::Migration
  def change
    create_join_table :Materials, :Templates do |t|
      # t.index [:material_id, :template_id]
       t.index [:template_id, :material_id]
    end
  end
end
