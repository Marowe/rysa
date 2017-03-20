class Location < ApplicationRecord
  belongs_to :location_group
  belongs_to :panel_provider
end
