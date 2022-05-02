class IndividualProject < ApplicationRecord
  belongs_to :individual_customer
  belongs_to :collateral
  belongs_to :fund_type
  belongs_to :use_of_fund
  belongs_to :user

  validates :appoint_date, presence: true
end
