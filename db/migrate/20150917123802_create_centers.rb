class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.string :location
      t.references :boss, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
