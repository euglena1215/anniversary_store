class CreateCouples < ActiveRecord::Migration[5.2]
  def change
    create_table :couples do |t|
      t.references :user1, foreign_key: { to_table: :users }, null: false
      t.references :user2, foreign_key: { to_table: :users }, null: false
      t.datetime :ended_at

      t.timestamps
    end
  end
end
