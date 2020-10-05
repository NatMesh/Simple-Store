676.times{
  new_product = Product.create(
                              :title => Faker::Commerce.product_name,
                              :price => Faker::Commerce.price,
                              :stock_quantity => Faker::Number.number(digits: 3)
                             )
}