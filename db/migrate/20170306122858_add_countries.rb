class AddCountries < ActiveRecord::Migration[5.0]
  class Country < ApplicationRecord
  end

  def up
    countries_attributes.each do |country|
      Country.create! country
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

  private

  def countries_attributes
    [
      {
         country_code: "PL",
         panel_provider_id: 1
      },
      {
         country_code: "RU",
         panel_provider_id: 2
      },
      {
         country_code: "AU",
         panel_provider_id: 3
      },
    ]
  end
end
