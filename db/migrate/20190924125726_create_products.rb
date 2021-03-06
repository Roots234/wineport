class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :admin, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.string :image, null: false
      t.timestamps
    end
  end
end
