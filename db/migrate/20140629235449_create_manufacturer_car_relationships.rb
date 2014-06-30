class CreateManufacturerCarRelationships < ActiveRecord::Migration
  def change
    create_table :manufacturer_car_relationships do |t|
      t.integer :manufacturer_id, null: false
      t.integer :car_id,          null: false

      t.timestamps
    end
  end
end
