class IndividualCustomer < ApplicationRecord

  has_many :individual_projects, dependent: :destroy
  belongs_to :store

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
end
