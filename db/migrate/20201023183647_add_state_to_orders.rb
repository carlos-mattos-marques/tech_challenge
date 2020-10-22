class AddStateToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :state, :state
  end
end
