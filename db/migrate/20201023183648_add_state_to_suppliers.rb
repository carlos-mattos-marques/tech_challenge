class AddStateToSuppliers < ActiveRecord::Migration[6.0]
  def change
    add_column :suppliers, :state, :state
  end
end
