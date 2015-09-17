class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.integer :quantity
      t.float :unit_price
      t.references :center, index: true, foreign_key: true
      t.references :language, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
