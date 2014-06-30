class ManufacturerCarRelationship < ActiveRecord::Base
  validates :manufacturer_id, presence: true
  validates :car_id, presence: true

  belongs_to :manufacturer
  belongs_to :car
end
