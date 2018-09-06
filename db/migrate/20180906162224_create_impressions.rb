class CreateImpressions < ActiveRecord::Migration[5.2]
  def change
    create_table :impressions do |t|
      t.text :content
      t.references :from, foreign_key: { to_table: :users }, null: false
      t.references :to, foreign_key: { to_table: :users }, null: false

      t.timestamps
    end
  end
end
