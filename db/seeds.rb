Pet.destroy_all
100.times {Pet.create(
  name: Faker::Name.name,
  species: %w[dog cat shark bird fish rabbit hamster snake turtle].sample,
  address: Faker::Address.full_address,
  found_on: Faker::Date.between(from: 2.days.ago, to: Date.today))
}
