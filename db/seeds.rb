require "csv"

companies_csv = CSV.readlines("db/images.csv")
companies_csv.shift
companies_csv.each do |row|
  Image.create(name: row[1], url: row[2], map: row[3])
end

companies_csv = CSV.readlines("db/products.csv")
companies_csv.shift
companies_csv.each do |row|
  Product.create(name: row[1], url: row[2], map: row[3])
end

companies_csv = CSV.readlines("db/reviews.csv")
companies_csv.shift
companies_csv.each do |row|
  Review.create(name: row[1], url: row[2], map: row[3])
end

companies_csv = CSV.readlines("db/users.csv")
companies_csv.shift
companies_csv.each do |row|
  User.create(name: row[1], url: row[2], map: row[3])
end