class FundType < ApplicationRecord

  has_many :individual_projects, dependent: :destroy
  has_many :corporation_customers, dependent: :destroy


  validates :fund_type, presence: true
end
