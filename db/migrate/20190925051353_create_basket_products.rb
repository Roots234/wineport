class CreateBasketProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :basket_products do |t|
      t.references :basket, null: false
      t.references :product, null: false
      t.timestamps
    end
  end
end
