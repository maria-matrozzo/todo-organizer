# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding lists..."

i1 = List.create(title:"Complete this project")

puts "seeding tasks..."

t1 = Task.create(description: "create rails app", status: true, list_id: i1.id)
t2 = Task.create(description: "full CRUD", status: false, list_id: i1.id)
t3 = Task.create(description: "create react app", status: false, list_id: i1.id)
t4 = Task.create(description: "style", status: false, list_id: i1.id)
t5 = Task.create(description: "record demo", status: false, list_id: i1.id)

puts "done seeding :)"