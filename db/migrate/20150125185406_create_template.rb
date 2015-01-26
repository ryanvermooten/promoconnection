class CreateTemplate < ActiveRecord::Migration
  def change
    create_table :templates do |t|
    	t.string :final_product
    end
  end
end
