class AddIndexToBosses < ActiveRecord::Migration
  def change
    add_index :bosses, :provider
    add_index :bosses, :uid
    add_index :bosses, [:provider, :uid], unique: true
  end
end
