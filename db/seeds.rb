require 'ffaker'

# Suppliers first link on the chain

Supplier.states.keys.each do |state|
  Supplier.create!(state: state, name: FFaker::Company.unique.name)
end

# Products are next

30.times do
  Product.create!(name: FFaker::Product.unique.product_name)
end

# And now we proceed with stocking the suppliers

Supplier.all.each do |supplier|
  Product.where(id: (Array.new(10) { rand(1...30) }.uniq)).each do |product|
    supplier.supplier_products << SupplierProduct.new(product: product, in_stock: rand(5..10))
  end
end

# And creating an Order

Order.create!(products: Product.where(id: (Array.new(3) { rand(1...30) }.uniq)), state: Order.states.keys.sample)

# Shipments should be created automatically after an Order.
