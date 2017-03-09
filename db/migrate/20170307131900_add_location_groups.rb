class AddLocationGroups < ActiveRecord::Migration[5.0]
  class LocationGroups < ApplicationRecord
  end

  def up
    location_groups_attributes.each do |location_group|
      LocationGroup.create! location_group
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

  private

  def location_groups_attributes
    [
      {
        country_id: 1,
        panel_provider_id: 1
      },
      {
        country_id: 2,
        panel_provider_id: 2
      },
      {
        country_id: 3,
        panel_provider_id: 3
      },
      {
        country_id: 4,
        panel_provider_id: 3
      }
    ]
  end
end
