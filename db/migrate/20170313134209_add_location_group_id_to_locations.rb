class AddLocationGroupIdToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :location_group_id, :integer, after: :name
  end
end
