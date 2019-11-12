class CreatePurchaseRecordProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :purchase_record_products do |t|
      t.references :purchase_record, null: false
      t.references :product, null: false
      t.timestamps
    end
  end
end
