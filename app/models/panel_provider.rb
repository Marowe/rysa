class PanelProvider < ApplicationRecord
  has_many :countries
  has_many :locations
end
