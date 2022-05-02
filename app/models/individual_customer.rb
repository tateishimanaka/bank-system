class IndividualCustomer < ApplicationRecord

  has_many :individual_projects, dependent: :destroy
  belongs_to :store

end
