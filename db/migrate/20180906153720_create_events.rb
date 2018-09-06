class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :title, null: false
      t.references :couple, foreign_key: true, null: false

      t.timestamps
    end
  end
end
