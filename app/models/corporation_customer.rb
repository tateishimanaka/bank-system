class CorporationCustomer < ApplicationRecord

  has_many :corporation_projects, dependent: :destroy
  belongs_to :store

  validates :name, presence: true
  validates :name_kana, presence: true
  validates :president, presence: true
  validates :president_kana, presence: true
end
