class Store < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :corporation_customers, dependent: :destroy
  has_many :individual_customers, dependent: :destroy

  validates :name, presence: true
end
