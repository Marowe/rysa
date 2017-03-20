class AddLocationGroupsToLocations < ActiveRecord::Migration[5.0]
  def up
    australian_locations = Location.where(id: [1..6])
    russian_locations = Location.where(id: [7..12])
    polish_locations = Location.where(id: [13..20])

    australian_group = LocationGroup.find(3)
    russian_group = LocationGroup.find(2)
    polish_group = LocationGroup.find(1)

    australian_locations.update_all(location_group_id: australian_group.id)
    russian_locations.update_all(location_group_id: russian_group.id)
    polish_locations.update_all(location_group_id: polish_group.id)
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
