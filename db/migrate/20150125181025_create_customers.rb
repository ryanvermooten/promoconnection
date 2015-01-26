class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :company_name
      t.string :email
      t.integer :phone_number
      t.string :contact_person

      t.timestamps
    end
  end
end
