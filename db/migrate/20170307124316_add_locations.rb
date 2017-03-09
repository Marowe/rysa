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
        name: "Sydney"
      },
      {
        name: "Melbourne"
      },
      {
        name: "Brisbane"
      },
      {
        name: "Perth"
      },
      {
        name: "Adelaide"
      },
      {
        name: "Gold Coast"
      },
      {
        name: "Moskwa"
      },
      {
        name: "Petersburg"
      },
      {
        name: "Nowosybirsk"
      },
      {
        name: "Jekaterynburg"
      },
      {
        name: "Niżny Nowogród"
      },
      {
        name: "Samara"
      },
      {
        name: "Warszawa"
      },
      {
        name: "Kraków"
      },
      {
        name: "Łódź"
      },
      {
        name: "Wrocław"
      },
      {
        name: "Poznań"
      },
      {
        name: "Gdańsk"
      },
      {
        name: "Szczecin"
      },
      {
        name: "Bydgoszcz"
      }
    ]
  end
end
