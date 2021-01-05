# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


country = ['India', 'Portugal','America', 'Spain', 'England','Brazil','France']
countries = []
country.each do |i|
  countries << Country.create(:country_name => i,)
end

institutions = []
5.times do
  institutions << 
    Institution.create(
      name: Faker::University.unique.name,
      address: Faker::Address.unique.full_address,
      phone: Faker::PhoneNumber.unique.phone_number,
      country_id: countries.shuffle.first.id
    )
end

students = []
20.times do
  students <<
  Student.create(
    full_name: Faker::Name.unique.name,
    address: Faker::Address.unique.full_address,
    email: Faker::Internet.unique.email,
    mobile: Faker::PhoneNumber.unique.phone_number,
    institution_id: institutions.shuffle.first.id,
    country_id: countries.shuffle.first.id,
    approved: [0,1].sample,
  
  )
 
end

c_array = ['Higher Secondary','Diploma','Graduation','Post Graduation']
c_obj = []
c_array .each do |c|
  c_obj << Credential.create(:name => c,)
end

students.each do |s|
  Qualification.create({student_id: s.id, credential_id: c_obj.shuffle.first.id})
end



