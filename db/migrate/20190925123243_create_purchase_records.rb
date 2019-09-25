class CreatePurchaseRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :purchase_records do |t|
      t.references :user, unique: true, null: false
      t.timestamps
    end
  end
end
