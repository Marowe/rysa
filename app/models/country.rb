class Country < ApplicationRecord
  belongs_to :target_group
  belongs_to :panel_provider
  has_many :locations
end
