class CreateTableSupplierProductShipment < ActiveRecord::Migration[6.0]
  def change
    create_table :supplier_product_shipments do |t|
      t.references :supplier, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :shipment, null: false, foreign_key: true
      t.integer :amount, null: false

      t.index [:supplier_id, :product_id, :shipment_id], name: 'index_supplier_product_shipments'
    end
  end
end