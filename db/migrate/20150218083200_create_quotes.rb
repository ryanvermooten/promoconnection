class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :total_amount
      t.belongs_to :order, index: true

      t.timestamps
    end
  end
end
