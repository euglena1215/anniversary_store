class CreateAnniversaries < ActiveRecord::Migration[5.2]
  def change
    create_table :anniversaries do |t|
      t.references :couple, foreign_key: true
      t.string :title
      t.integer :year
      t.integer :month
      t.integer :day

      t.timestamps
    end
  end
end
