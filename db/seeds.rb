# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Contact.create(name: "Paco", phonenumber: "87648762", address: "Rambla del Brasil 8", email: "paco@gmail.com", favorite: true)
Contact.create(name: "Lucas", phonenumber: "891275", address: "Rambla del Brasil 10", email: "lucas@gmail.com", favorite: true)
Contact.create(name: "Mike", phonenumber: "080192843", address: "Rambla del Brasil 15", email: "mike@gmail.com", favorite: true)
Contact.create(name: "Rolo", phonenumber: "12423432", address: "Rambla del Brasil 123", email: "rolo@gmail.com", favorite: false)
Contact.create(name: "Mireia", phonenumber: "8098724", address: "Diagonal 100", email: "mireia@gmail.com", favorite: false)
Contact.create(name: "Claudia", phonenumber: "312425", address: "Diagonal 284", email: "claudia@gmail.com", favorite: false)
Contact.create(name: "Paula", phonenumber: "251526", address: "Via Layetana 123", email: "paula@gmail.com", favorite: false)
