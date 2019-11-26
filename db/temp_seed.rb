#temporary seed file to be merged:

# BELOW ARE NAMES AND DETAILS OF RESTAURANTS IN SAME ORDER AS ABOVE. WILL NEED PUTTING IN CORRECT PLACE
# Restaurant SCULLY

puts "Creating restuarant intiial seed"
scully = Restaurant.new(name: "Scully St James's", address: "4 ST James's Market, St James's, London SW1Y 4AH", city: 'London', latitude: 51.5087, longitude: 0.1331, category: 'Asian Fusion', total_rating: 5, website: 'www.scullyrestaurant.com', phone_number: '+44 20 3911 6840')
scully.save
puts "Created Scully!"

puts "Creating visit initial seed"
test_visit = Visit.new(date: Date.today, user: test_user, restaurant: scully, number_of_people: 6)
test_visit.save
puts "Visit to Scully by Test Test completed"

puts "Creating review initial seed"
Review.create(visit: test_visit, content: 'Exceptional food and service. Worth a visit!', rating: 5)
puts "Created Test Test's review of Scully"

puts "Creating the bookmark initial seed for Test at Scully"
Bookmark.create(restaurant: scully, user: test_user)
puts "Created initial bookmark seed"

# Restaurant ROGANIC

puts "Creating restuarant intiial seed"
roganic = Restaurant.new(name: "Roganic", address: "5-7 Blandford Street, Marylebone, London W1U 3DB", city: 'London', latitude: 51.5182, longitude: 0.1521, category: 'Modern British', total_rating: 4, website: 'www.roganic.uk', phone_number: '+44 20 3370 6260')
roganic.save
puts "Created Roganic!"

puts "Creating visit initial seed"
test_visit = Visit.new(date: Date.today, user: test_user, restaurant: roganic, number_of_people: 4)
test_visit.save
puts "Visit to Roganic by Test Test completed"

puts "Creating review initial seed"
Review.create(visit: test_visit, content: 'Nice atmosphere, beautiful presentation of meals.', rating: 4)
puts "Created Test Test's review of Roganic"

puts "Creating the bookmark initial seed for Test at Roganic"
Bookmark.create(restaurant: roganic, user: test_user)
puts "Created initial bookmark seed"


# Restaurant Mar do Inferno

puts "Creating restuarant intiial seed"
mar_do_inferno = Restaurant.new(name: "Restaurant Mar do Inferno", address: "Av. Rei Humberto II de Italia, 2750-800, Cascais", city: 'Cascais', latitude: 38.6910, longitude: 9.4300, category: 'Seafood', total_rating: 4, website: 'www.mardoinferno.pt', phone_number: '+351 21 483 2218')
mar_do_inferno.save
puts "Created Restaurant Mar do Inferno!"

puts "Creating visit initial seed"
test_visit = Visit.new(date: Date.today, user: test_user, restaurant: mar_do_inferno, number_of_people: 8)
test_visit.save
puts "Visit to Restaurant Mar do Inferno by Test Test completed"

puts "Creating review initial seed"
Review.create(visit: test_visit, content: 'Lovely view, perfectly seasoned calamari and clams.', rating: 4)
puts "Created Test Test's review of Restaurant Mar do Inferno"

puts "Creating the bookmark initial seed for Test at Restaurant Mar do Inferno"
Bookmark.create(restaurant: mar_do_inferno, user: test_user)
puts "Created initial bookmark seed"

# Restaurant La Colombe

puts "Creating restuarant intiial seed"
la_colombe = Restaurant.new(name: "La Colombe", address: "Silvermist Wine Estate, Main Road, Constantia Nek, Cape Town, 7806", city: 'Cape Town', latitude: 34.0152, longitude: 18.4033, category: 'Mondern French', total_rating: 5, website: 'www.lacolombe.co.za', phone_number: '+27 21 794 2390')
la_colombe.save
puts "Created La Colombe!"

puts "Creating visit initial seed"
test_visit = Visit.new(date: Date.today, user: test_user, restaurant: la_colombe, number_of_people: 2)
test_visit.save
puts "Visit to La Colombe by Test Test completed"

puts "Creating review initial seed"
Review.create(visit: test_visit, content: 'Extremely beautiful and delicate plates of food, romantic setting. A visit is a must! ', rating: 5)
puts "Created Test Test's review of La Colombe"

puts "Creating the bookmark initial seed for Test at La Colombe"
Bookmark.create(restaurant: la_colombe, user: test_user)
puts "Created initial bookmark seed"


# Restaurant Test Kitchen

puts "Creating restuarant intiial seed"
test_kitchen = Restaurant.new(name: "Test Kitchen", address: "The Old Buscuit Mill, Woodstock, Cape Town, 7915", city: 'Cape Town', latitude: 33.9275, longitude: 18.4571, category: 'Latin South African', total_rating: 5, website: 'www.thetestkitchen.co.za', phone_number: '+27 21 447 2337')
test_kitchen.save
puts "Created Test Kitchen!"

puts "Creating visit initial seed"
test_visit = Visit.new(date: Date.today, user: test_user, restaurant: test_kitchen, number_of_people: 2)
test_visit.save
puts "Visit to Test Kitchen by Test Test completed"

puts "Creating review initial seed"
Review.create(visit: test_visit, content: 'A fabulous experience, even after my fourth visit, it never gets old. ', rating: 5)
puts "Created Test Test's review of Test Kitchen"

puts "Creating the bookmark initial seed for Test at La Colombe"
Bookmark.create(restaurant: test_kitchen, user: test_user)
puts "Created initial bookmark seed"

# Restaurant Koy Shunka

puts "Creating restuarant intiial seed"
koy_shunka = Restaurant.new(name: "Test Kitchen", address: "Carrer d'en Copons, 7, 08002, Barcelona", city: 'Barcelona', latitude: 41.3858, longitude: 2.1754, category: 'Japanese', total_rating: 4, website: 'www.koyshunka.com', phone_number: '+34 9341 27939')
koy_shunka.save
puts "Created Koy Shunka!"

puts "Creating visit initial seed"
test_visit = Visit.new(date: Date.today, user: test_user, restaurant: koy_shunka, number_of_people: 5)
test_visit.save
puts "Visit to Koy Shunka by Test Test completed"

puts "Creating review initial seed"
Review.create(visit: test_visit, content: 'Top rated sushi, beautifully presented ', rating: 4)
puts "Created Test Test's review of Koy Shunka"

puts "Creating the bookmark initial seed for Test at Koy Shunka"
Bookmark.create(restaurant: koy_shunka, user: test_user)
puts "Created initial bookmark seed"
