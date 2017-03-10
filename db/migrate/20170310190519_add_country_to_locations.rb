class AddCountryToLocations < ActiveRecord::Migration[5.0]
  def up
    australian_locations = Location.where(id: [1..6])
    russian_locations = Location.where(id: [7..12])
    polish_locations = Location.where(id: [13..20])

    australian_country = Country.find_by(country_code: "AU")
    russian_country = Country.find_by(country_code: "RU")
    polish_country = Country.find_by(country_code: "PL")

    australian_locations.update_all(country_id: (australian_country.id))
    russian_locations.update_all(country_id: (russian_country.id))
    polish_locations.update_all(country_id: (polish_country.id))
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
