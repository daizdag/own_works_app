class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.integer :follower_id, foreign_key: true, null: false
      t.integer :followed_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
