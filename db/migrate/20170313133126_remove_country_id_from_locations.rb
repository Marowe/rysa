class RemoveCountryIdFromLocations < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :country_id, :integer
  end
end
