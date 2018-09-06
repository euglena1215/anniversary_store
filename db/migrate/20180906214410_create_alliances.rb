class CreateAlliances < ActiveRecord::Migration[5.2]
  def change
    create_table :alliances do |t|
      t.string :logo
      t.string :url
      t.string :name, null: false
      t.text :message

      t.timestamps
    end
  end
end
