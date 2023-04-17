# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create one student

student = Student.create(
	first_name: 'Franky',
	last_name: 'Doyle',
	email: 'frenky@test.au'
)

# create more fake seed data at once

20.times do |i|
	puts "Creating student #{i+1}"  #like console.log
	Student.create(
		first_name: "Student #{i+1}",
		last_name: "Lname #{i+1}",
		email: "student#{i+1}@test.au"
	)
end