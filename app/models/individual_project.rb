class IndividualProject < ApplicationRecord
  belongs_to :individual_customer
  belongs_to :collateral
  belongs_to :fund_types
  belongs_to :use_of_funds
  belongs_to :user
end
