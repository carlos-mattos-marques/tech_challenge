class CreateShipments < ActiveRecord::Migration[6.0]
  def change
    create_table :shipments do |t|
      t.datetime :deadline
      t.references :orders, null: false, foreign_key: true

      t.timestamps
    end
  end
end
