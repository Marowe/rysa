class AddLocations < ActiveRecord::Migration[5.0]
  class Location < ApplicationRecord
  end

  def up
    locations_attributes.each do |location|
      Location.create! location
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

  private

  def locations_attributes
    [
      {
        id: 1,
        name: "Sydney"
      },
      {
        id: 2,
        name: "Melbourne"
      },
      {
        id: 3,
        name: "Brisbane"
      },
      {
        id: 4,
        name: "Perth"
      },
      {
        id: 5,
        name: "Adelaide"
      },
      {
        id: 6,
        name: "Gold Coast"
      },
      {
        id: 7,
        name: "Moskwa"
      },
      {
        id: 8,
        name: "Petersburg"
      },
      {
        id: 9,
        name: "Nowosybirsk"
      },
      {
        id: 10,
        name: "Jekaterynburg"
      },
      {
        id: 11,
        name: "Niżny Nowogród"
      },
      {
        id: 12,
        name: "Samara"
      },
      {
        id: 13,
        name: "Warszawa"
      },
      {
        id: 14,
        name: "Kraków"
      },
      {
        id: 15,
        name: "Łódź"
      },
      {
        id: 16,
        name: "Wrocław"
      },
      {
        id: 17,
        name: "Poznań"
      },
      {
        id: 18,
        name: "Gdańsk"
      },
      {
        id: 19,
        name: "Szczecin"
      },
      {
        id: 20,
        name: "Bydgoszcz"
      }
    ]
  end
end
