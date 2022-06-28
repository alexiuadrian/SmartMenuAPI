class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.decimal :price
      t.references :restaurant, foreign_key: true, null: false, on_delete: :cascade
      t.references :category, foreign_key: true, null: false, on_delete: :cascade

      t.timestamps
    end
  end
end
