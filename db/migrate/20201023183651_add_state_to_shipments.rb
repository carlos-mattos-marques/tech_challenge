class AddStateToShipments < ActiveRecord::Migration[6.0]
  def change
    add_column :shipments, :state, :state
  end
end
