class CreateContact < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile_number
      t.string :job_title
      t.belongs_to :title, index: true
    end
  end
end
