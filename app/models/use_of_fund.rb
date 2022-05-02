class UseOfFund < ApplicationRecord

  has_many :individual_projects, dependent: :destroy
  has_many :corporation_projects, dependent: :destroy

  validates :use_of_fund, presence: true
end
