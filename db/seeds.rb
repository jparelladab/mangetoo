# CREATING THE INITIAL SEEDS
puts "Destroying old seeds"
Review.destroy_all
Bookmark.destroy_all
Follow.destroy_all
Visit.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "Creating seeds"

# USER SEEDS

puts "Creating user initial seeds"
test_user_one = User.new(first_name: 'James', last_name: 'Johnson', city: 'London', super_foodie: true, admin: true, email: 'james@johnson.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1541418950054-c12804e149d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
test_user_one.save
test_user_two = User.new(first_name: 'Sarah', last_name: 'Brewster', city: 'London', super_foodie: true, admin: true, email: 'sarah@brewster.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1158&q=80')
test_user_two.save
test_user_three = User.new(first_name: 'John', last_name: 'Oliver', city: 'London', super_foodie: true, admin: true, email: 'john@oliver.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1553907725-c3d2e2ccc00e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
test_user_three.save
test_user_four = User.new(first_name: 'Lucy', last_name: 'Smythe', city: 'London', super_foodie: true, admin: true, email: 'lucy@smythe.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
test_user_four.save

philippa = User.new(first_name: 'Philippa', last_name: 'Mitchell', city: 'London', super_foodie: true, admin: true, email: 'philippa@mitchell.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
philippa.save
joan = User.new(first_name: 'Joan', last_name: 'Parellada', city: 'Barcelona', super_foodie: true, admin: true, email: 'joan@parellada.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
joan.save
jo = User.new(first_name: 'Jo', last_name: 'Pearson', city: 'London', super_foodie: true, admin: true, email: 'jo@pearson.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1559548331-f9cb98001426?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
jo.save
ben = User.new(first_name: 'Benjamin', last_name: 'Baker', city: 'London', super_foodie: true, admin: true, email: 'benjamin@baker.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1495078065017-564723e7e3e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')
ben.save

# SuperFoodie seeds

puts "Created user initial seeds"

# FOLLOW SEEDS

puts "Creating the initial follow seed"

# Test User One following all test users + philippa
Follow.create('follower_id': test_user_one.id, 'following_id': test_user_two.id)
Follow.create('follower_id': test_user_one.id, 'following_id': test_user_three.id)
Follow.create('follower_id': test_user_one.id, 'following_id': test_user_four.id)
Follow.create('follower_id': test_user_one.id, 'following_id': philippa.id)

# Test User Two following all test users + joan
Follow.create('follower_id': test_user_two.id, 'following_id': test_user_one.id)
Follow.create('follower_id': test_user_two.id, 'following_id': test_user_three.id)
Follow.create('follower_id': test_user_two.id, 'following_id': test_user_four.id)
Follow.create('follower_id': test_user_two.id, 'following_id': joan.id)

# Test User Three following all test users + jo
Follow.create('follower_id': test_user_three.id, 'following_id': test_user_one.id)
Follow.create('follower_id': test_user_three.id, 'following_id': test_user_two.id)
Follow.create('follower_id': test_user_three.id, 'following_id': test_user_four.id)
Follow.create('follower_id': test_user_three.id, 'following_id': jo.id)

# Test User Three following all test users + ben
Follow.create('follower_id': test_user_four.id, 'following_id': test_user_one.id)
Follow.create('follower_id': test_user_four.id, 'following_id': test_user_two.id)
Follow.create('follower_id': test_user_four.id, 'following_id': test_user_three.id)
Follow.create('follower_id': test_user_four.id, 'following_id': ben.id)

# Philippa following all test users + us
Follow.create('follower_id': philippa.id, 'following_id': test_user_one.id)
Follow.create('follower_id': philippa.id, 'following_id': test_user_two.id)
Follow.create('follower_id': philippa.id, 'following_id': test_user_three.id)
Follow.create('follower_id': philippa.id, 'following_id': test_user_four.id)
Follow.create('follower_id': philippa.id, 'following_id': joan.id)
Follow.create('follower_id': philippa.id, 'following_id': jo.id)
Follow.create('follower_id': philippa.id, 'following_id': ben.id)
# Joan following all test users
Follow.create('follower_id': joan.id, 'following_id': test_user_one.id)
Follow.create('follower_id': joan.id, 'following_id': test_user_two.id)
Follow.create('follower_id': joan.id, 'following_id': test_user_three.id)
Follow.create('follower_id': joan.id, 'following_id': test_user_four.id)
Follow.create('follower_id': joan.id, 'following_id': philippa.id)
Follow.create('follower_id': joan.id, 'following_id': jo.id)
Follow.create('follower_id': joan.id, 'following_id': ben.id)
# Jo following all test users
Follow.create('follower_id': jo.id, 'following_id': test_user_one.id)
Follow.create('follower_id': jo.id, 'following_id': test_user_two.id)
Follow.create('follower_id': jo.id, 'following_id': test_user_three.id)
Follow.create('follower_id': jo.id, 'following_id': test_user_four.id)
Follow.create('follower_id': jo.id, 'following_id': philippa.id)
Follow.create('follower_id': jo.id, 'following_id': joan.id)
Follow.create('follower_id': jo.id, 'following_id': ben.id)
# Ben following all test users
Follow.create('follower_id': ben.id, 'following_id': test_user_one.id)
Follow.create('follower_id': ben.id, 'following_id': test_user_two.id)
Follow.create('follower_id': ben.id, 'following_id': test_user_three.id)
Follow.create('follower_id': ben.id, 'following_id': test_user_four.id)
Follow.create('follower_id': ben.id, 'following_id': philippa.id)
Follow.create('follower_id': ben.id, 'following_id': joan.id)
Follow.create('follower_id': ben.id, 'following_id': jo.id)

puts "Created the intiial follow seed."


# RESTAURANT SEED

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

# VISIT AND REVIEW SEED

puts "Creating visit and associated reviews initial seeds"

yesterday = Date.today - 1
day_before_yesterday = Date.today - 2
last_week = Date.today - 7
tomorrow = Date.today + 1
next_week = Date.today + 7

# Test User One visits and reviews
  test_visit_one = Visit.new(date: last_week, user: test_user_one, restaurant: five_fields, number_of_people: 4)
  test_visit_one.save
      Review.create(content: 'This was a really wonderful experience!!', rating: 5, visit: test_visit_one)

  test_visit_two = Visit.new(date: yesterday, user: test_user_one, restaurant: song_que, number_of_people: 2)
  test_visit_two.save
      Review.create(content: 'The Pho here really is a must-have. Highly recommend this place for anyone who likes Vietnamese food. One of the best and most authentic in London.', rating: 4, visit: test_visit_two)

  test_visit_one_b = Visit.new(date: Date.today, user: test_user_one, restaurant: osteria_binari, number_of_people: 4)
  test_visit_one_b.save
      # No review created

  test_visit_two_b = Visit.new(date: yesterday, user: test_user_one, restaurant: koy_shunka, number_of_people: 2)
  test_visit_two_b.save
      Review.create(content: 'This was a really wonderful experience!! Highly recommend this place to everyone.', rating: 5, visit: test_visit_two_b)

  test_visit_one_c = Visit.new(date: day_before_yesterday, user: test_user_one, restaurant: mar_do_inferno, number_of_people: 4)
  test_visit_one_c.save
      Review.create(content: 'Delicious! A must-do when you are here!', rating: 5, visit: test_visit_one_c)

  test_visit_two_c = Visit.new(date: day_before_yesterday, user: test_user_one, restaurant: trattoria_pontini, number_of_people: 2)
  test_visit_two_c.save
      Review.create(content: 'Great value, family-run trattoria off the usual tourist track. You could easily miss this place on a trip to Venice, but you should trust the quality of the food over the surroundings. You can need to wait in line for a while though and speaking Italian will certainly help with communication.', rating: 4, visit: test_visit_two_c)

  test_visit_one_d = Visit.new(date: yesterday, user: test_user_one, restaurant: la_colombe, number_of_people: 4)
  test_visit_one_d.save
        Review.create(content: 'Superb! Not cheap, but the amazing food is worth the expense.', rating: 5, visit: test_visit_one_d)

  test_visit_two_d = Visit.new(date: day_before_yesterday, user: test_user_one, restaurant: scully, number_of_people: 2)
  test_visit_two_d.save
        Review.create(content: 'Superb! Not cheap, but the amazing food is worth the expense.', rating: 5, visit: test_visit_two_d)

# Test User Two visits and reviews
  test_visit_three = Visit.new(date: yesterday, user: test_user_two, restaurant: five_fields, number_of_people: 8)
  test_visit_three.save
    Review.create(content: 'The veal was really incredible. I would highly recommend coming here, but perhaps not on a Saturday night, as it can be very busy.', rating: 5, visit: test_visit_three)

  test_visit_four = Visit.new(date: Date.today, user: test_user_two, restaurant: st_john, number_of_people: 5)
  test_visit_four.save
    # No review

  test_visit_four_b = Visit.new(date: last_week, user: test_user_two, restaurant: song_que, number_of_people: 5)
  test_visit_four_b.save
    Review.create(content: 'Very authentic. Probably among the best Vietnamese places in London.', rating: 5, visit: test_visit_four_b)

# Test User Three visits and reviews
  test_visit_five = Visit.new(date: last_week, user: test_user_three, restaurant: five_fields, number_of_people: 6)
  test_visit_five.save
    Review.create(content: 'We had a superb meal here. Definitely should be on your foodie agenda in London. We had the steak followed by tiramisu, both highly recommended.', rating: 5, visit: test_visit_five)


  test_visit_six = Visit.new(date: yesterday, user: test_user_three, restaurant: song_que, number_of_people: 4)
  test_visit_six.save
    Review.create(content: "No frills, but really flavoursome pho. Can't say that I have had better pho in London.", rating: 4, visit: test_visit_six)

  test_visit_six_b = Visit.new(date: day_before_yesterday, user: test_user_three, restaurant: roganic, number_of_people: 4)
  test_visit_six_b.save
    Review.create(content: "Good, though could be fresher. Certainly good for a mid-week lunch, though probably wouldn't come for a special event.", rating: 3, visit: test_visit_six_b)

  test_visit_six_c = Visit.new(date: last_week, user: test_user_three, restaurant: st_john, number_of_people: 5)
  test_visit_six_c.save
    Review.create(content: "A time-honoured London eatery. A real must-do for anyone passionate about British cooking, and particularly nose-to-tail. You may need an adventurous attitude for some of the dishes, but these are real classics that have largely been forgotten.", rating: 3, visit: test_visit_six_c)

# Test User Four visits and reviews
  test_visit_seven = Visit.new(date: last_week, user: test_user_four, restaurant: la_colombe, number_of_people: 2)
  test_visit_seven.save
    Review.create(content: 'Extremely beautiful and delicate plates of food, romantic setting. A visit is a must! ', rating: 5, visit: test_visit_seven)

  test_visit_eight = Visit.new(date: yesterday, user: test_user_four, restaurant: koy_shunka, number_of_people: 5)
  test_visit_eight.save
    Review.create(content: 'Top rated sushi, beautifully presented ', rating: 4, visit: test_visit_eight)

  test_visit_eight_b = Visit.new(date: Date.today, user: test_user_four, restaurant: five_fields, number_of_people: 5)
  test_visit_eight_b.save
    # No review

  test_visit_eight_c = Visit.new(date: day_before_yesterday, user: test_user_four, restaurant: stendhal, number_of_people: 3)
  test_visit_eight_c.save
    Review.create(content: 'Fantastic authentic Milanese cuisine.', rating: 4, visit: test_visit_eight_c)

  test_visit_eight_d = Visit.new(date: last_week, user: test_user_four, restaurant: noble_rot, number_of_people: 5)
  test_visit_eight_d.save
    Review.create(content: 'Great wine bar and eatery. Fantastic selection of wines on offer and a really tasty menu of high-quality, well-cooked food. Very good value week-day set lunch menu too.', rating: 4, visit: test_visit_eight_d)

# Philippa initial visit and review seeds
  philippa_visit_one = Visit.new(date: day_before_yesterday, user: philippa, restaurant: st_john, number_of_people: 6)
  philippa_visit_one.save
    Review.create(content: 'Traditional British food at its best!', rating: 5, visit: philippa_visit_one)

  philippa_visit_two = Visit.new(date: yesterday, user: philippa, restaurant: trattoria_carampane, number_of_people: 5)
  philippa_visit_two.save

# Joan initial visit and review seeds
  joan_visit_one = Visit.new(date: last_week, user: joan, restaurant: koy_shunka, number_of_people: 6)
  joan_visit_one.save
    Review.create(content: 'Superb sushi! Come here next time when you come to Barcelona.', rating: 5, visit: joan_visit_one)

  joan_visit_two = Visit.new(date: tomorrow, user: joan, restaurant: roganic, number_of_people: 5)
  joan_visit_two.save

# Jo initial visit and review seeds
  jo_visit_one = Visit.new(date: day_before_yesterday, user: jo, restaurant: hammer_tongs, number_of_people: 6)
  jo_visit_one.save
    Review.create(content: 'Delicious meaty heaven! Introduced me to South African cusisine and now I can\'t get enough', rating: 5, visit: jo_visit_one)

  jo_visit_two = Visit.new(date: next_week, user: jo, restaurant: roganic, number_of_people: 2)
  jo_visit_two.save

# Ben initial visit and review seeds
  ben_review_one = Visit.new(date: last_week, user: ben, restaurant: noble_rot, number_of_people: 8)
  ben_review_one.save
    Review.create(content: 'Large selection of wines, particularly more unusual wines you will not find everywhere. Food is homely, but high-quality and always delicious. A real gem. Likely to need to book in advance.', rating: 4, visit: ben_review_one)

  ben_review_two = Visit.new(date: last_week, user: ben, restaurant: shawarma_bar, number_of_people: 3)
  ben_review_two.save
    Review.create(content: 'One of my favourite places in London. Delicious food and always a busy, lively atmoshpere. The hummus is delicious - try the Iraqi hummus.', rating: 4, visit: ben_review_two)

  ben_review_three = Visit.new(date: tomorrow, user: ben, restaurant: osteria_binari, number_of_people: 3)
  ben_review_three.save

  ben_review_four = Visit.new(date: next_week, user: ben, restaurant: luca, number_of_people: 5)
  ben_review_four.save

  ben_review_five = Visit.new(date: Date.today, user: ben, restaurant: st_john, number_of_people: 4)
  ben_review_five.save

  ben_review_six = Visit.new(date: last_week, user: ben, restaurant: trattoria_carampane, number_of_people: 5)
  ben_review_six.save
    Review.create(content: 'Fantastic, classic Venetian restaurant. Get there in the right season to have the soft-shell crab.', rating: 5, visit: ben_review_six)

  ben_review_seven = Visit.new(date: next_week, user: ben, restaurant: gloria, number_of_people: 5)
  ben_review_seven.save

  ben_review_eight = Visit.new(date: yesterday, user: ben, restaurant: la_colombe, number_of_people: 15)
  ben_review_eight.save

  ben_review_nine = Visit.new(date: Date.today, user: ben, restaurant: roganic, number_of_people: 15)
  ben_review_nine.save

  ben_review_ten = Visit.new(date: last_week, user: ben, restaurant: hammer_tongs, number_of_people: 8)
  ben_review_ten.save


puts "Created initial visit and reviews seeds!"

# BOOKMARK SEED

puts "Creating the bookmark initial seeds"

# Test User One bookmark seeds
  Bookmark.create(restaurant: five_fields, user: test_user_one)
  Bookmark.create(restaurant: song_que, user: test_user_one)
  Bookmark.create(restaurant: st_john, user: test_user_one)
  Bookmark.create(restaurant: koy_shunka, user: test_user_one)

# Test User Two bookmark seeds
  Bookmark.create(restaurant: la_colombe, user: test_user_two)
  Bookmark.create(restaurant: osteria_binari, user: test_user_two)
  Bookmark.create(restaurant: stendhal, user: test_user_two)
  Bookmark.create(restaurant: song_que, user: test_user_two)

# Test User Three bookmark seeds
  Bookmark.create(restaurant: five_fields, user: test_user_three)
  Bookmark.create(restaurant: song_que, user: test_user_three)
  Bookmark.create(restaurant: mar_do_inferno, user: test_user_three)
  Bookmark.create(restaurant: scully, user: test_user_three)

# Test User Four bookmark seeds
  Bookmark.create(restaurant: noble_rot, user: test_user_four)
  Bookmark.create(restaurant: koy_shunka, user: test_user_four)
  Bookmark.create(restaurant: five_fields, user: test_user_four)
  Bookmark.create(restaurant: trattoria_carampane, user: test_user_four)

# Philippa bookmark seeds
  Bookmark.create(restaurant: st_john, user: philippa)
  Bookmark.create(restaurant: koy_shunka, user: philippa)
  Bookmark.create(restaurant: trattoria_pontini, user: philippa)
  Bookmark.create(restaurant: hammer_tongs, user: philippa)

# Joan bookmark seeds
  Bookmark.create(restaurant: scully, user: joan)
  Bookmark.create(restaurant: gloria, user: joan)
  Bookmark.create(restaurant: la_colombe, user: joan)
  Bookmark.create(restaurant: hammer_tongs, user: joan)

# Jo bookmark seeds
  Bookmark.create(restaurant: five_fields, user: jo)
  Bookmark.create(restaurant: shawarma_bar, user: jo)
  Bookmark.create(restaurant: la_colombe, user: jo)
  Bookmark.create(restaurant: stendhal, user: jo)

# Ben bookmark seeds
  Bookmark.create(restaurant: scully, user: ben)
  Bookmark.create(restaurant: shawarma_bar, user: ben)
  Bookmark.create(restaurant: five_fields, user: ben)
  Bookmark.create(restaurant: trattoria_pontini, user: ben)
  Bookmark.create(restaurant: trattoria_carampane, user: ben)
  Bookmark.create(restaurant: st_john, user: ben)
  Bookmark.create(restaurant: gloria, user: ben)
  Bookmark.create(restaurant: test_kitchen, user: ben)
  Bookmark.create(restaurant: noble_rot, user: ben)
  Bookmark.create(restaurant: hammer_tongs, user: ben)

puts "Created initial bookmark seeds"


# FINISH OF THE INITIAL SEEDS
puts "All initial seeds completed."




