# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CREATING THE INITIAL SEEDS
puts "Destroying old seeds"
User.destroy_all
Restaurant.destroy_all
Visit.destroy_all
Review.destroy_all
Bookmark.destroy_all
Follow.destroy_all

puts "Creating seeds"

puts "Creating user test@test.com"
test_user = User.new(first_name: 'Test', last_name: 'Test', city: 'London', super_foodie: true, admin: true, email: 'test@test.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1158&q=80')
test_user.save
follower_test_user = User.new(first_name: 'Follower', last_name: 'Test', city: 'London', super_foodie: true, admin: true, email: 'follower@test.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1158&q=80')
follower_test_user.save
puts "Default user created Test Test, test@test.com, password"

puts "Creating restuarant intiial seed"
five_fields = Restaurant.new(name: 'The Five Fields', address: '8-9, Blacklands Terrace, Chelsea, London SW3 2SP', city: 'London', latitude: 51.4917, longitude: 0.1613, category: 'Modern British', total_rating: 5, website: 'www.fivefieldsrestaurant.com', phone_number: '020 7838 1082')
five_fields.save
puts "Created The Five Fields!"

puts "Creating visit initial seed"
test_visit = Visit.new(date: Date.today, user: test_user, restaurant: five_fields, number_of_people: 4)
test_visit.save
puts "Visit to Five Fields by Test Test completed"

puts "Creating review initial seed"
Review.create(visit: test_visit, content: 'This was a really wonderful experience!!', rating: 5)
puts "Created Test Test's review of Five Fields"

puts "Creating the bookmark initial seed for Test at Five Fields"
Bookmark.create(restaurant: five_fields, user: test_user)
puts "Created initial bookmark seed"

puts "Creating the initial follow seed"
Follow.create('following_id': follower_test_user.id, 'follower_id': test_user.id)
puts "Created the intiial follow seed."

puts "All initial seeds completed."
# FINISH OF THE INITIAL SEEDS
