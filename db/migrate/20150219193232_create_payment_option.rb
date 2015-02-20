class CreatePaymentOption < ActiveRecord::Migration
  def change
    create_table :payment_options do |t|
      t.integer :term_id
      t.integer :credit_limit
    end
  end
end
