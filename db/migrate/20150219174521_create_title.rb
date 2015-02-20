class CreateTitle < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :title
    end
  end
end
