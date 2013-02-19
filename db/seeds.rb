# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create!(email: "albeiro63@yahoo.com.ar", password: "1234", password_confirmation: "1234", admin: true)

if Rails.env.development?
	
	Work.destroy_all

	image=File.open(File.join(Rails.root, "db/images/missing.png"))

	50.times do |n|
		Work.create!(name: Faker::Company.name, date: DateTime.now, description: Faker::Lorem.paragraph, image: image, price: Random.rand(10000..45000))
	end
	
else

