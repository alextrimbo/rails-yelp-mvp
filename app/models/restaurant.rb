class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy #if restaurant deleted, so is the reviews
  validates :phone_number, presence: true
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ['chinese','italian','japanese','french','belgian'], allow_nil: false }
end
