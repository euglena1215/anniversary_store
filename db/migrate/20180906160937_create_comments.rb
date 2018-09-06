class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :event, foreign_key: true, null: false
      t.integer :status, null: false
      t.text :content
      t.references :writer, foreign_key: { to_table: :users }, null: false

      t.timestamps
    end
  end
end
