class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.text :text,             null: false
      t.integer :price,         null: false
      t.references :user,       null: false, foreign_key: true
      t.references :donationd,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
