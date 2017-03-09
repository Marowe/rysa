class TargetGroup < ApplicationRecord
  has_many :countries
  belongs_to :target_group, through: :parent_id
end
