class CreateBulkDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bulk_discounts do |t|
      t.decimal :percentage
      t.integer :quantity_threshhold
      t.references :merchant, foreign_key: true

      t.timestamps
    end
  end
end
