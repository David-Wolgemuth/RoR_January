# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create name:"Alex", email:"a@a.com", password:"ruby", password_confirmation:"ruby"
User.create name:"Divya", email:"d@s.com", password:"rails", password_confirmation:"rails"

Item.create content:"Read a book", checked:false, user:User.first
Item.create content:"Finish assignment", checked:false, user:User.first
Item.create content:"Eat lunch", checked:true, user:User.last
