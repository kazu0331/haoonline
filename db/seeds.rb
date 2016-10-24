require "csv"

companies_csv = CSV.readlines("db/images.csv")
companies_csv.shift
companies_csv.each do |row|
  Image.create(
    status: row[1], 
    row[2] == 'main' ? name: 0: name: 1,
    image: row[3],
    products_id: row[4]
  )
end

companies_csv = CSV.readlines("db/products.csv")
companies_csv.shift
companies_csv.each do |row|
  Product.create(product_name: row[1], explanation1: row[2], explanation2: row[3], explanation3: row[4], price: row[5])
end

# companies_csv = CSV.readlines("db/reviews.csv")
# companies_csv.shift
# companies_csv.each do |row|
#   Review.create(rate: row[1], review: row[2], product_id: row[3], user_id: row[4])
# end

# companies_csv = CSV.readlines("db/users.csv")
# companies_csv.shift
# companies_csv.each do |row|
#   User.create(email: row[1], password: row[2], password_confirmation: row[3], permission: row[4])
# end