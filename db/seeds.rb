# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CREATING THE INITIAL SEEDS
puts "Destroying old seeds"
Review.destroy_all
Bookmark.destroy_all
Follow.destroy_all
Visit.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "Creating seeds"

puts "Creating user initial seeds"
test_user_one = User.new(first_name: 'Test', last_name: 'One', city: 'London', super_foodie: true, admin: true, email: 'one@test.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1158&q=80')
test_user_one.save
test_user_two = User.new(first_name: 'Test', last_name: 'Two', city: 'London', super_foodie: true, admin: true, email: 'two@test.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1158&q=80')
test_user_two.save
test_user_three = User.new(first_name: 'Test', last_name: 'Three', city: 'London', super_foodie: true, admin: true, email: 'three@test.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1158&q=80')
test_user_three.save
test_user_four = User.new(first_name: 'Test', last_name: 'Four', city: 'London', super_foodie: true, admin: true, email: 'four@test.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1158&q=80')
test_user_four.save

puts "Default user initial seeds created"


puts "Creating restaurant initial seeds"
five_fields = Restaurant.new(name: 'The Five Fields', address: '8-9, Blacklands Terrace, Chelsea, London SW3 2SP', city: 'London', category: 'Modern British', website: 'www.fivefieldsrestaurant.com', phone_number: '020 7838 1082')
five_fields.save
song_que = Restaurant.new(name: 'Sông Quê Café', address: '134 Kingsland Rd, Hackney, London, E2 8DY', city: 'London', category: 'Vietnamese', website: 'www.songque.co.uk', phone_number: '020 7613 3222')
song_que.save
st_john = Restaurant.new(name: 'St. John', address: '26 St. John Street, London Borough of Islington, England, United Kingdom', city: 'London', category: 'Modern British', website: 'www.stjohnrestaurant.com', phone_number: '020 7251 0848')
st_john.save
luca = Restaurant.new(name: 'Luca', address: '88 St. John Street, London Borough of Islington, England, United Kingdom', city: 'London', category: 'Italian', website: 'www.luca.restaurant', phone_number: '020 3859 3000')
luca.save
gloria = Restaurant.new(name: 'Gloria', address: '54-56 Great Eastern St, Hackney, London, EC2A 3QR', city: 'London', category: 'Italian', website: 'www.bigmammagroup.com/en/trattorias/gloria', phone_number: '')
gloria.save
shawarma_bar = Restaurant.new(name: 'Berber & Q - Shawarma Bar', address: '46 Exmouth Market, London Borough of Islington, England, United Kingdom', city: 'London', category: 'Middle Eastern', website: 'www.shawarmabar.co.uk', phone_number: "020 7837 1726")
shawarma_bar.save
noble_rot = Restaurant.new(name: 'Noble Rot Wine Bar & Restaurant', address: "51 Lamb's Conduit St, Holborn, London, WC1N 3NB", city: 'London', category: 'Modern British', website: 'www.noblerot.co.uk', phone_number: "020 7242 8963")
noble_rot.save
stendhal = Restaurant.new(name: 'Stendhal Milano', address: "Via Ancona 1, Milan, Lombardia, Italy", city: 'Milan', category: 'Italian', website: 'www.stendhalmilano.it', phone_number: "+39 02 657 2059")
stendhal.save
osteria_binari = Restaurant.new(name: 'Osteria Del Binari', address: "Via Tortona, 3, 20144 Milano MI, Italy", city: 'Milan', category: 'Italian', website: 'www.osteriadelbinari.com', phone_number: "+39 02 8940 9428")
osteria_binari.save
trattoria_pontini = Restaurant.new(name: 'Trattoria Bar Pontini', address: "Cannaregio, 1268, 30121 Venezia VE, Italy", city: 'Venice', category: 'Italian', website: '', phone_number: "+39 041 714123")
trattoria_pontini.save
trattoria_carampane = Restaurant.new(name: 'Trattoria Antiche Carampane', address: "Rio Terà de le Carampane, 1911, 30125 Venezia VE, Italy", city: 'Venice', category: 'Italian', website: 'www.antichecarampane.com', phone_number: "+39 041 524 0165")
trattoria_carampane.save
hammer_tongs = Restaurant.new(name: 'Hammer & Tongs', address: "171 Farringdon Road, London Borough of Islington, England, United Kingdom", city: 'London', category: 'South African', website: 'www.hammertongs.co.uk', phone_number: "020 3774 2884")
hammer_tongs.save
scully = Restaurant.new(name: "Scully St James's", address: "4 ST James's Market, St James's, London, SW1Y 4AH", city: 'London', category: 'Asian Fusion', website: 'www.scullyrestaurant.com', phone_number: '+44 20 3911 6840')
scully.save
roganic = Restaurant.new(name: "Roganic", address: "5-7 Blandford Street, Marylebone, London, W1U 3DB", city: 'London', category: 'Modern British', website: 'www.roganic.uk', phone_number: '+44 20 3370 6260')
roganic.save
mar_do_inferno = Restaurant.new(name: "Restaurant Mar do Inferno", address: "Av. Rei Humberto II de Italia, 2750-800, Cascais", city: 'Cascais', category: 'Seafood', website: 'www.mardoinferno.pt', phone_number: '+351 21 483 2218')
mar_do_inferno.save
la_colombe = Restaurant.new(name: "La Colombe", address: "7806 Hout Bay Main Road, Hout Bay, Western Cape, South Africa", city: 'Cape Town', category: 'Mondern French', website: 'www.lacolombe.co.za', phone_number: '+27 21 794 2390')
la_colombe.save
test_kitchen = Restaurant.new(name: "Test Kitchen", address: "375 Albert Rd, Woodstock, Cape Town, 7915, South Africa", city: 'Cape Town', category: 'Latin South African', website: 'www.thetestkitchen.co.za', phone_number: '+27 21 447 2337')
test_kitchen.save
koy_shunka = Restaurant.new(name: "Koy Shunka", address: "Carrer d'en Copons, 7, 08002, Barcelona", city: 'Barcelona', category: 'Japanese', website: 'www.koyshunka.com', phone_number: '+34 9341 27939')
koy_shunka.save

puts "Created restaurant initial seeds!"

puts "Creating visit initial seeds"
yesterday = Date.today - 1
day_before_yesterday = Date.today - 2

test_visit_one = Visit.new(date: Date.today, user: test_user_one, restaurant: five_fields, number_of_people: 4)
test_visit_one.save
test_visit_two = Visit.new(date: yesterday, user: test_user_one, restaurant: song_que, number_of_people: 2)
test_visit_two.save
test_visit_one_b = Visit.new(date: Date.today, user: test_user_one, restaurant: osteria_binari, number_of_people: 4)
test_visit_one_b.save
test_visit_two_b = Visit.new(date: yesterday, user: test_user_one, restaurant: koy_shunka, number_of_people: 2)
test_visit_two_b.save
test_visit_one_c = Visit.new(date: day_before_yesterday, user: test_user_one, restaurant: mar_do_inferno, number_of_people: 4)
test_visit_one_c.save
test_visit_two_c = Visit.new(date: day_before_yesterday, user: test_user_one, restaurant: trattoria_pontini, number_of_people: 2)
test_visit_two_c.save
test_visit_one_d = Visit.new(date: yesterday, user: test_user_one, restaurant: la_colombe, number_of_people: 4)
test_visit_one_d.save
test_visit_two_d = Visit.new(date: day_before_yesterday, user: test_user_one, restaurant: scully, number_of_people: 2)
test_visit_two_d.save

test_visit_three = Visit.new(date: Date.today, user: test_user_two, restaurant: five_fields, number_of_people: 8)
test_visit_three.save
test_visit_four = Visit.new(date: Date.today, user: test_user_two, restaurant: song_que, number_of_people: 5)
test_visit_four.save
test_visit_five = Visit.new(date: Date.today, user: test_user_three, restaurant: five_fields, number_of_people: 6)
test_visit_five.save
test_visit_six = Visit.new(date: Date.today, user: test_user_three, restaurant: song_que, number_of_people: 4)
test_visit_six.save
test_visit_seven = Visit.new(date: Date.today, user: test_user_four, restaurant: la_colombe, number_of_people: 2)
test_visit_seven.save
test_visit_eight = Visit.new(date: Date.today, user: test_user_four, restaurant: koy_shunka, number_of_people: 5)
test_visit_eight.save
puts "Visit seeds completed!"

puts "Creating review initial seeds"
Review.create(content: 'This was a really wonderful experience!!', rating: 5, visit: test_visit_one)
Review.create(content: 'The Pho here really is a must-have. Highly recommend this place for anyone who likes Vietnamese food. One of the best and most authentic in London.', rating: 4, visit: test_visit_two)
Review.create(content: 'The veal was really incredible. I would highly recommend coming here, but perhaps not on a Saturday night, as it can be very busy.', rating: 5, visit: test_visit_three)
Review.create(content: 'Very authentic. Probably among the best Vietnamese places in London.', rating: 5, visit: test_visit_four)
Review.create(content: 'We had a superb meal here. Definitely should be on your foodie agenda in London. We had the steak followed by tiramisu, both highly recommended.', rating: 5, visit: test_visit_five)
Review.create(content: "No frills, but really flavoursome pho. Can't say that I have had better pho in London.", rating: 4, visit: test_visit_six)
Review.create(content: 'Extremely beautiful and delicate plates of food, romantic setting. A visit is a must! ', rating: 5, visit: test_visit_seven)
Review.create(content: 'Top rated sushi, beautifully presented ', rating: 4, visit: test_visit_eight)
puts "Created review initial seeds!"

puts "Creating the bookmark initial seeds"
Bookmark.create(restaurant: five_fields, user: test_user_one)
Bookmark.create(restaurant: song_que, user: test_user_one)
Bookmark.create(restaurant: five_fields, user: test_user_two)
Bookmark.create(restaurant: song_que, user: test_user_two)
Bookmark.create(restaurant: five_fields, user: test_user_three)
Bookmark.create(restaurant: song_que, user: test_user_three)
Bookmark.create(restaurant: la_colombe, user: test_user_four)
Bookmark.create(restaurant: koy_shunka, user: test_user_four)
puts "Created initial bookmark seeds"

puts "Creating the initial follow seed"
Follow.create('following_id': test_user_two.id, 'follower_id': test_user_one.id)
Follow.create('following_id': test_user_three.id, 'follower_id': test_user_one.id)
Follow.create('following_id': test_user_one.id, 'follower_id': test_user_two.id)
Follow.create('following_id': test_user_three.id, 'follower_id': test_user_two.id)
Follow.create('following_id': test_user_one.id, 'follower_id': test_user_three.id)
Follow.create('following_id': test_user_four.id, 'follower_id': test_user_three.id)
Follow.create('following_id': test_user_one.id, 'follower_id': test_user_four.id)
Follow.create('following_id': test_user_two.id, 'follower_id': test_user_four.id)
puts "Created the intiial follow seed."

puts "All initial seeds completed."
# FINISH OF THE INITIAL SEEDS




