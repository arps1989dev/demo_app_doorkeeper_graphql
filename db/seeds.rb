# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = Role.create!([
  { role_name: "super_admin"}, 
  { role_name: "producer"},
  { role_name: "manager"}, 
  { role_name: "supplier"}, 
  { role_name: "seller"}, 
  { role_name: "buyer"}
])

users = User.create!([
  {
    name: "Arpita Hirpara", email: "arpita.sojitra@gmail.com", password: "hello123",
    password_confirmation: "hello123", date_of_joining: "12-12-2017", delete_flag: false,
    admin: true
  },
  {
    name: "Divyang Hirpara", email: "divyanghirpara@gmail.com", password: "hello123",
    password_confirmation: "hello123", date_of_joining: "10-12-2017", delete_flag: false,
    admin: false
  },
  {
    name: "Deepa Dhiman", email: "deepadhiman@gmail.com", password: "hello123",
    password_confirmation: "hello123", date_of_joining: "12-12-2017", delete_flag: false,
    admin: false
  },
  {
    name: "Ami Faldu", email: "amifaldu@gmail.com", password: "hello123",
    password_confirmation: "hello123", date_of_joining: "12-12-2017", delete_flag: false,
    admin: false
  },
  {
    name: "Jigar Bhatt", email: "jigarbhatt@gmail.com", password: "hello123",
    password_confirmation: "hello123", date_of_joining: "12-12-2017", delete_flag: false,
    admin: false
  },
  {
    name: "Trusha Shukla", email: "trushashukla@gmail.com", password: "hello123",
    password_confirmation: "hello123", date_of_joining: "12-12-2017", delete_flag: false,
    admin: false
  }
])

User.find_by(id: 1).roles << Role.find_by_role_name("super_admin")
User.find_by(id: 2).roles << Role.find_by_role_name("producer")
User.find_by(id: 3).roles << Role.find_by_role_name("manager")
User.find_by(id: 4).roles << Role.find_by_role_name("supplier")
User.find_by(id: 5).roles << Role.find_by_role_name("seller")
User.find_by(id: 6).roles << Role.find_by_role_name("buyer")