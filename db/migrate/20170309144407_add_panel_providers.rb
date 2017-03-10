class AddPanelProviders < ActiveRecord::Migration[5.0]
  class PanelProvider < ApplicationRecord
  end

  def up
    panel_provider_attributes.each do |panel_provider|
      PanelProvider.create! panel_provider
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

  private

  def panel_provider_attributes
    [
      {
        code: "panel_provider_1"
      },
      {
        code: "panel_provider_2"
      },
      {
        code: "panel_provider_3"
      }
    ]
  end
end
