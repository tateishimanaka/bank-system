class CorporationProject < ApplicationRecord

  belongs_to :corporation_customer
  belongs_to :collateral
  belongs_to :fund_type
  belongs_to :use_of_fund
  belongs_to :user
end
