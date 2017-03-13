class AddLocationGroupToCountries < ActiveRecord::Migration[5.0]
  class Country < ApplicationRecord
  end

  def up
    polish_group = Country.find_by(country_code: "PL")
    russian_group = Country.find_by(country_code: "RU")
    australian_group = Country.find_by(country_code: "AU")

    polish_group.update(location_group_id: 1)
    russian_group.update(location_group_id: 2)
    australian_group.update(location_group_id: 3)

  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
