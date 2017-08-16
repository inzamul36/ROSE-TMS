class CreateStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :staffs do |t|
      t.string :staff_name
      t.string :staff_phone
      t.string :staff_email
      t.string :staff_sex
      t.text :staff_address
      t.integer :staff_salary
      t.integer :staff_delete, :default=> '0'

      t.timestamps
    end
  end
end
