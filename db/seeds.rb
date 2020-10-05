require "csv"

Product.destroy_all

Category.destroy_all

filename = Rails.root.join("db/products.csv")

puts "Loading Movies from the CSV file: #{filename}"

csv_data = File.read(filename)
products = CSV.parse(csv_data, headers: true, encoding: "utf-8")

products.each do |p|
  category = Category.find_or_create_by(name: p["category"])

  if category && category.valid?
    product = category.products.create(
      title: p["name"],
      description: p["description"],
      price: p["price"],
      stock_quantity: p["stock quantity"]
    )
  end
end