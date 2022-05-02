class Collateral < ApplicationRecord
  has_many :individual_projects, dependent: :destroy
  has_many :corporation_projects, dependent: :destroy

  validates :collateral, presence: true
end
