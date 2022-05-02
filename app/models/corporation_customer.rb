class CorporationCustomer < ApplicationRecord

  has_many :corporation_projects, dependent: :destroy
  belongs_to :store
end
