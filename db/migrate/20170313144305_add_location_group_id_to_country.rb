class AddLocationGroupIdToCountry < ActiveRecord::Migration[5.0]
  def change
    add_column :countries, :location_group_id, :integer, after: :panel_provider_id
  end
end
