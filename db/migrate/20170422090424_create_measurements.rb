class CreateMeasurements < ActiveRecord::Migration[5.0]
  def change
    create_table :measurements do |t|
      t.references :order, foreign_key: true
      t.string :neck, :default=> '0'
      t.string :chest, :default=> '0'
      t.string :shoulder, :default=> '0'
      t.string :waist, :default=> '0'
      t.string :hips, :default=> '0'
      t.string :sleeve, :default=> '0'
      t.string :bicep, :default=> '0'
      t.string :wrist, :default=> '0'
      t.string :length, :default=> '0'
      t.string :thigh, :default=> '0'
      t.string :crotch, :default=> '0'
      t.string :ankles, :default=> '0'
      t.string :inseam, :default=> '0'
      t.string :outseam, :default=> '0'
      t.text :other_measurements, :default=> '0'
      
      t.timestamps
    end
  end
end
