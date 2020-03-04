require "csv"


CSV.foreach('db/seeds/forum_category.csv', headers: true) do |row|
  Category.create(
    category: row['category'].to_s,
  )
end