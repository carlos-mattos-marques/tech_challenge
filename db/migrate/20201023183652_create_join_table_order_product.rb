class CreateJoinTableOrderProduct < ActiveRecord::Migration[6.0]
  def change
    create_join_table :orders, :products do |t|
      t.index [:order_id, :product_id]
    end
  end
end
