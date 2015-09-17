class CreateBosses < ActiveRecord::Migration
  def change
    create_table :bosses do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :name
      t.string :avatar_url
      t.string :repo_url

      t.timestamps null: false
    end
  end
end
