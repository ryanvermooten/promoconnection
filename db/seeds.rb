# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

title = Title.create([{ title: 'Mr'}, {title: 'Mrs'}, {title:'Miss'}, {title: 'Dr.'}, {title:'Ms.'}, {title:'Prof'}, {title:'Rev'}, {title:'Lady'},{title:'Sir'}])

term = Term.create([{term: 'COD'}, {term: '30 days'} ])