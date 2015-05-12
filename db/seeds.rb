20.times do
Store.create(name: Faker::Name.name, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip_code)
end