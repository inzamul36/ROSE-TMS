class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_phone
      t.string :customer_email
      t.string :customer_sex
      t.text :customer_address

      t.timestamps
    end
  end
end
