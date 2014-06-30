class Car < ActiveRecord::Base
  validates :manufacturer, presence: true
  validates :color, presence: true
  validates :year, presence: true, inclusion: { within: 1920..Time.now.year }
  validates :mileage, presence: true

  has_many :manufacturer_car_relationships, dependent: :destroy
end
