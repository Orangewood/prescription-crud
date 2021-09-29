# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

120.times do |n| 
    name = Faker::Lorem.word
    dosage = "#{Faker::Number.decimal(l_digits: 2)} #{Faker::Measurement.metric_weight}"
    Prescription.create!(
        name: name, 
        dosage: dosage
    )
end

prescriptions = Prescription.order(:created_at).take(30)
12.times do 
    store = Faker::Lorem.word
    address = "#{Faker::Address.building_number} #{Faker::Address.street_name}"
    price = Faker::Number.decimal(l_digits: 2)
    prescriptions.each { |prescription| prescription.stores.create!(
     store: store,
     address: address, 
     price: price   
    )}
end