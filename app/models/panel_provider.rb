class PanelProvider < ApplicationRecord
  acts_as_tree
  has_many :countries
end
