# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bishojo = User.create(
    name: 'bishojo', 
    email: 'bishojo@ninevillage.com', 
    password: '12345678',
    admin: true
)

naxmeify = User.create(
    name: 'naxmeify', 
    email: 'matt@nax.me', 
    password: '12345678',
    admin: true
)