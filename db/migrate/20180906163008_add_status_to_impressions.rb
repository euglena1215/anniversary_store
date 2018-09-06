class AddStatusToImpressions < ActiveRecord::Migration[5.2]
  def change
    add_column :impressions, :status, :integer, null: false
  end
end
