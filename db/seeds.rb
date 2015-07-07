# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "--- Deleting all contacts ---"
Contact.destroy_all


Contact.create(
	name: 'Joan', 
	email: 'Joaniepoo@aol.com', 
	phone_number: '4492', 
	address: '8 Leafy Ln'
	)

Contact.create(
	name: 'Hagrid', 
	email: 'hagridlovespopcorn@gmail.com', 
	phone_number: '9784', 
	address: '33 DesperatePerson Drive'
	)
Contact.create(
	name: 'Sallie', 
	email: 'sallie@aol.com', 
	phone_number: '9922', 
	address: '183 Risky St'
	)
Contact.create(
	name: 'Harriet', 
	email: 'harriet@creeper.com', 
	phone_number: '0992', 
	address: '8 Wildberry Ln'
	)
Contact.create(
	name: 'Chad', 
	email: 'toocool@forschool.com', 
	phone_number: '3792', 
	address: '93 Poser St'
	)
