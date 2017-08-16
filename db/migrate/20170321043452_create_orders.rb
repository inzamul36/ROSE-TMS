class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.references :staff, foreign_key: true
      t.date :delivery_date
      t.integer :order_amount
      t.integer :order_paid
      t.string :order_status
      t.text :order_details
      t.integer :order_delete, :default=> '0'

      t.timestamps
    end
  end
end
