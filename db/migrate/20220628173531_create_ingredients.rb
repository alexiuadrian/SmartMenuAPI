class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :is_alergen, default: false
      t.boolean :is_fasting, default: false
      t.boolean :is_vegetarian, default: false
      t.boolean :is_vegan, default: false
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
