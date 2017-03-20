class TargetGroup < ApplicationRecord
  acts_as_tree
  has_many :countries
  belongs_to :target_group
end
