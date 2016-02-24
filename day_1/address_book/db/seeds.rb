# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.upto(20){|index|  Contact.create name: "Contact #{index}", email: "contact#{index}@email", phone:"6767576#{index+10}", adress: "Contact #{index} adress"}
