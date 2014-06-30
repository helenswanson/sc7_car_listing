class Manufacturer < ActiveRecord::Base
  validates :name, presence: true
  validates :country, presence: true

  has_many :manufacturer_car_relationships, dependent: :destroy
end
