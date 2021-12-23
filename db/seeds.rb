puts "Planting seed, creating Roles..."

3.times{
    Role.create(
        character_name: Faker::Name.name
    )
}

puts "Planting seed, creating Audition..."

10.times{
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Address.city,
        phone: Faker::PhoneNumber.phone_number,
        hired: false,
        role_id: rand(1..3)
    )
}
