class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string  :model,    null: false
      t.string  :country, null: false

      t.timestamps
    end
  end
end
