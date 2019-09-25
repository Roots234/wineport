class CreateBaskets < ActiveRecord::Migration[5.1]
  def change
    create_table :baskets do |t|
      t.references :user, unique: true, null: false
      t.timestamps
    end
  end
end
