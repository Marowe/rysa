class AddPanelProviderToTargetGroup < ActiveRecord::Migration[5.0]
  class TargetGroup < ApplicationRecord
  end

  def up
    target_groups_attributes.each do |target_group|
      TargetGroup.create! target_group
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

  private

  def target_groups_attributes
    [
      {
        panel_provider_id: 1
      },
      {
        panel_provider_id: 2
      },
      {
        panel_provider_id: 3
      },
      {
        panel_provider_id: 3
      }
    ]
  end
end
