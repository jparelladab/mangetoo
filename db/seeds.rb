# CREATING THE INITIAL SEEDS
puts "Destroying old seeds"
Review.destroy_all
Bookmark.destroy_all
Follow.destroy_all
Visit.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "Creating seeds"

yesterday = Date.today - 1
day_before_yesterday = Date.today - 2
last_week = Date.today - 7
tomorrow = Date.today + 1
next_week = Date.today + 7
last_year = Date.today - 365

# USER SEEDS

puts "Creating user initial seeds"

test_user_one = User.new(first_name: 'James', last_name: 'Johnson', city: 'London', super_foodie: false, admin: true, email: 'james@johnson.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1541418950054-c12804e149d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
test_user_one.save
test_user_two = User.new(first_name: 'Sarah', last_name: 'Brewster', city: 'London', super_foodie: false, admin: true, email: 'sarah@brewster.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1158&q=80', last_seen_at: day_before_yesterday)
test_user_two.save
test_user_three = User.new(first_name: 'John', last_name: 'Oliver', city: 'London', super_foodie: false, admin: true, email: 'john@oliver.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1553907725-c3d2e2ccc00e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
test_user_three.save
test_user_four = User.new(first_name: 'Lucy', last_name: 'Smythe', city: 'London', super_foodie: false, admin: true, email: 'lucy@smythe.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', last_seen_at: last_week)
test_user_four.save
test_user_five = User.new(first_name: 'Robert', last_name: 'Strew', city: 'London', super_foodie: false, admin: false, email: 'robert@strew.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', last_seen_at: last_week)
test_user_five.save
test_user_six = User.new(first_name: 'Hannah', last_name: 'Claridge', city: 'London', super_foodie: false, admin: false, email: 'hannah@claridge.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1567250671670-05e36d8ca38e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', last_seen_at: last_week)
test_user_six.save
test_user_seven = User.new(first_name: 'Briony', last_name: 'Piper', city: 'London', super_foodie: false, admin: false, email: 'briony@piper.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1562003389-902303a38425?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
test_user_seven.save
test_user_eight = User.new(first_name: 'Donald', last_name: 'Jones', city: 'London', super_foodie: false, admin: false, email: 'donald@jones.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
test_user_eight.save
test_user_nine = User.new(first_name: 'Rhys', last_name: 'Williams', city: 'London', super_foodie: false, admin: false, email: 'rhys@williams.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1482264851290-446b18e3ee9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
test_user_nine.save
test_user_nine = User.new(first_name: 'Claire', last_name: 'Andrews', city: 'London', super_foodie: false, admin: false, email: 'claire@andrews.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
test_user_nine.save
test_user_ten = User.new(first_name: 'Henry', last_name: 'Mores', city: 'London', super_foodie: false, admin: false, email: 'henry@mores.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
test_user_ten.save

philippa = User.new(first_name: 'Philippa', last_name: 'Mitchell', city: 'London', super_foodie: false, admin: true, email: 'philippa@mitchell.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80', last_seen_at: day_before_yesterday)
philippa.save
joan = User.new(first_name: 'Joan', last_name: 'Parellada', city: 'Barcelona', super_foodie: false, admin: true, email: 'joan@parellada.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80', last_seen_at: yesterday)
joan.save
jo = User.new(first_name: 'Jo', last_name: 'Pearson', city: 'London', super_foodie: false, admin: true, email: 'jo@pearson.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1559548331-f9cb98001426?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80', last_seen_at: yesterday)
jo.save
ben = User.new(first_name: 'Benjamin', last_name: 'Baker', city: 'London', super_foodie: false, admin: true, email: 'benjamin@baker.com', password: 'password', default_image: 'https://images.unsplash.com/photo-1495078065017-564723e7e3e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80', last_seen_at: day_before_yesterday)
ben.save

# SuperFoodie seeds
jamie_oliver = User.new(first_name: 'Jamie', last_name: 'Oliver', city: 'London', super_foodie: true, admin: false, email: 'jamie@oliver.com', password: 'password', default_image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkpq4jO3T2LBfHBEctDdAuJQnQhYyLFajD9N75E2srRXQasrcrug&s')
jamie_oliver.save
marco_pierre_white = User.new(first_name: 'Marco Pierre', last_name: 'White', city: 'London', super_foodie: true, admin: false, email: 'marcopierre@white.com', password: 'password', default_image: 'https://i.guim.co.uk/img/media/9e5eb477d2fb0260f1e9892a12fa9244af4f37ff/747_109_1467_880/master/1467.jpg?width=300&quality=85&auto=format&fit=max&s=e27bd5b57f78e5328812e0053776f7bb')
marco_pierre_white.save
gordon_ramsay = User.new(first_name: 'Gordon', last_name: 'Ramsay', city: 'London', super_foodie: true, admin: false, email: 'gordon@ramsay.com', password: 'password', default_image: 'data:image/jpeg;base64,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')
gordon_ramsay.save
giles_coren = User.new(first_name: 'Giles', last_name: 'Coren', city: 'London', super_foodie: true, admin: false, email: 'giles@coren.com', password: 'password', default_image: 'data:image/jpeg;base64,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')
giles_coren.save
nigella_lawson = User.new(first_name: 'Nigella', last_name: 'Lawson', city: 'London', super_foodie: true, admin: false, email: 'nigella@lawson.com', password: 'password', default_image: 'data:image/jpeg;base64,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')
nigella_lawson.save

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
Follow.create('follower_id': philippa.id, 'following_id': nigella_lawson.id)
Follow.create('follower_id': philippa.id, 'following_id': jamie_oliver.id)
# Joan following all test users
Follow.create('follower_id': joan.id, 'following_id': test_user_one.id)
Follow.create('follower_id': joan.id, 'following_id': test_user_two.id)
Follow.create('follower_id': joan.id, 'following_id': test_user_three.id)
Follow.create('follower_id': joan.id, 'following_id': test_user_four.id)
Follow.create('follower_id': joan.id, 'following_id': philippa.id)
Follow.create('follower_id': joan.id, 'following_id': jo.id)
Follow.create('follower_id': joan.id, 'following_id': ben.id)
Follow.create('follower_id': joan.id, 'following_id': marco_pierre_white.id)
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
Follow.create('follower_id': ben.id, 'following_id': nigella_lawson.id)
Follow.create('follower_id': ben.id, 'following_id': marco_pierre_white.id)

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
senyor_parellada = Restaurant.new(name: "Senyor Parellada", address: "Carrer de l'Argenteria, 37, 08003 Barcelona, Spain", city: 'Barcelona', category: 'Catalan', website: 'www.senyorparellada.com', phone_number: '+34 933 10 50 94')
senyor_parellada.save
au_passage = Restaurant.new(name: "Restaurant Au Passage", address: "1bis Passage Saint-Sébastien, 75011 Paris, France", city: 'Paris', category: 'French', website: 'www.restaurant-aupassage.fr', phone_number: '+33 1 43 55 07 52')
au_passage.save
du_pain_et_des_idees = Restaurant.new(name: "Du Pain et des Idées", address: "34 Rue Yves Toudic, 75010 Paris, France", city: 'Paris', category: 'Bakery', website: 'www.dupainetdesidees.com', phone_number: '+33 1 42 40 44 52')
du_pain_et_des_idees.save
bistrot_paul_bert = Restaurant.new(name: "Bistrot Paul Bert", address: "18 Rue Paul Bert, 75011 Paris, France", city: 'Paris', category: 'French', website: '', phone_number: '+33 1 43 72 24 01')
bistrot_paul_bert.save
jean_georges = Restaurant.new(name: "Jean-Georges", address: "1 Central Park West, New York, NY 10023, United States", city: 'New York', category: 'French', website: 'www.jean-georges.com', phone_number: '+1 212-299-3900')
jean_georges.save
bohemian = Restaurant.new(name: "Bohemian", address: "57 Great Jones St, New York, NY 10012, United States", city: 'New York', category: 'Japanese', website: 'www.playearth.jp/eng/bohemian_ny/', phone_number: '')
bohemian.save
bens_pizza = Restaurant.new(name: "Famous Ben's Pizza", address: "177 Spring St, New York, NY 10012, United States", city: 'New York', category: 'Pizza', website: 'www.famousbenspizzanyc.com', phone_number: '+1 212-966-4494')
bens_pizza.save
le_bernardin = Restaurant.new(name: "Le Bernardin", address: "155 W 51st St, New York, NY 10019, United States", city: 'New York', category: 'Seafood', website: 'www.le-bernardin.com', phone_number: '+1 212-554-1515')
le_bernardin.save
white_rabbit = Restaurant.new(name: "White Rabbit", address: "Smolenskaya Square, 3, Moscow, Russia, 121099", city: 'Moscow', category: 'Russian', website: 'www.whiterabbitmoscow.ru', phone_number: '+7 495 510-51-01')
white_rabbit.save
cafe_pushkin = Restaurant.new(name: "Cafe Pushkin", address: "Tverskoy Blvd, 26А, Moscow, Russia, 125009", city: 'Moscow', category: 'Russian', website: 'www.cafe-pushkin.ru', phone_number: '+7 495 739-00-33')
cafe_pushkin.save
chemodan = Restaurant.new(name: "Chemodan", address: "Gogolevsky Blvd, 25, стр. 1, Moscow, Russia, 119019", city: 'Moscow', category: 'Russian', website: 'www.chemodan-msk.ru', phone_number: '+7 495 695-38-19')
chemodan.save
ratana = Restaurant.new(name: "Ratanà", address: "Via Gaetano de Castillia, 28, 20124 Milano MI, Italy", city: 'Milan', category: 'Italian', website: 'www.ratana.it', phone_number: '+39 02 8712 8855')
ratana.save
luini = Restaurant.new(name: "Panzerotti Luini", address: "Via Santa Radegonda, 16, 20121 Milano MI, Italy", city: 'Milan', category: 'Bakery', website: 'www.luini.it', phone_number: '+39 02 8646 1917')
luini.save
cracco = Restaurant.new(name: "Cracco", address: "Corso Vittorio Emanuele II, 20121 Milano MI, Italy", city: 'Milan', category: 'Italian', website: 'www.ristorantecracco.it', phone_number: '+39 02 876774')
cracco.save
drogheria_milanese = Restaurant.new(name: "Drogheria Milanese", address: "Via Conca del Naviglio, 7, 20123 Milano MI, Italy", city: 'Milan', category: 'Italian', website: 'www.drogheriemilanesi.it', phone_number: '+39 02 5811 4843')
drogheria_milanese.save
el_porteno = Restaurant.new(name: "El Porteño Darsena", address: "Viale Gian Galeazzo, 25, 20136 Milano MI, Italy", city: 'Milan', category: 'Argentinian', website: 'www.elporteno.it', phone_number: '+39 02 5843 7593')
el_porteno.save

puts "Created restaurant initial seeds!"

# VISIT AND REVIEW SEED

puts "Creating visit and associated reviews initial seeds"

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

  test_user_one_visit_one = Visit.new(date: last_year, user: test_user_one, restaurant: osteria_binari, number_of_people: 5)
  test_user_one_visit_one.save
  Review.create(content: 'Out of the way, charming little restaurant. Unfortunately, our primi piatti were a bit oversalted, but the desserts were tasty.', rating: 2, visit: test_user_one_visit_one)

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
  ben_visit_one = Visit.new(date: last_week, user: ben, restaurant: noble_rot, number_of_people: 8)
  ben_visit_one.save
  Review.create(content: 'Large selection of wines, particularly more unusual wines you will not find everywhere. Food is homely, but high-quality and always delicious. A real gem. Likely to need to book in advance.', rating: 4, visit: ben_visit_one)

  ben_visit_two = Visit.new(date: last_week, user: ben, restaurant: shawarma_bar, number_of_people: 3)
  ben_visit_two.save
  Review.create(content: 'One of my favourite places in London. Delicious food and always a busy, lively atmoshpere. The hummus is delicious - try the Iraqi hummus.', rating: 4, visit: ben_visit_two)

  ben_visit_three = Visit.new(date: tomorrow, user: ben, restaurant: osteria_binari, number_of_people: 3)
  ben_visit_three.save
  ben_visit_four = Visit.new(date: next_week, user: ben, restaurant: luca, number_of_people: 5)
  ben_visit_four.save

  ben_visit_five = Visit.new(date: Date.today, user: ben, restaurant: st_john, number_of_people: 4)
  ben_visit_five.save

  ben_visit_six = Visit.new(date: last_week, user: ben, restaurant: trattoria_carampane, number_of_people: 5)
  ben_visit_six.save
  Review.create(content: 'Fantastic, classic Venetian restaurant. Get there in the right season to have the soft-shell crab.', rating: 5, visit: ben_visit_six)

  ben_visit_seven = Visit.new(date: next_week, user: ben, restaurant: gloria, number_of_people: 5)
  ben_visit_seven.save

  ben_visit_eight = Visit.new(date: yesterday, user: ben, restaurant: la_colombe, number_of_people: 15)
  ben_visit_eight.save

  ben_visit_nine = Visit.new(date: Date.today, user: ben, restaurant: roganic, number_of_people: 15)
  ben_visit_nine.save

  ben_visit_ten = Visit.new(date: last_week, user: ben, restaurant: hammer_tongs, number_of_people: 8)
  ben_visit_ten.save

  ben_visit_eleven = Visit.new(date: last_year, user: ben, restaurant: white_rabbit, number_of_people: 5)
  ben_visit_eleven.save
  Review.create(content: 'Amazing location on top of Moscow. The surroundings alone are worth a visit, and the food is high-quality and delicious. Worth a visit if you are in Moscow.', rating: 5, visit: ben_visit_eleven)

  # SuperFoodie visits

  #  Jamie Oliver

  jamie_oliver_visit_one = Visit.new(date: last_week, user: jamie_oliver, restaurant: five_fields, number_of_people: 2)
  jamie_oliver_visit_one.save
  Review.create(content: 'Absolutely pukka. On my top list for London.', rating: 5, visit: jamie_oliver_visit_one)

  jamie_oliver_visit_two = Visit.new(date: day_before_yesterday, user: jamie_oliver, restaurant: st_john, number_of_people: 2)
  jamie_oliver_visit_two.save
  Review.create(content: 'Absolute legend in the London culinary scene. A must-do for any serious foodie.', rating: 5, visit: jamie_oliver_visit_two)

  jamie_oliver_visit_three = Visit.new(date: yesterday, user: jamie_oliver, restaurant: la_colombe, number_of_people: 6)
  jamie_oliver_visit_three.save
  Review.create(content: 'You should defintely come here if you are visiting South Africa. Proper pukka South African cuisine.', rating: 5, visit: jamie_oliver_visit_three)

  jamie_oliver_visit_four = Visit.new(date: yesterday, user: jamie_oliver, restaurant: senyor_parellada, number_of_people: 5)
  jamie_oliver_visit_four.save
  Review.create(content: 'Excellent. You should defintely come here if you are visiting Barcelona. Proper catalan cuisine.', rating: 5, visit: jamie_oliver_visit_four)

  # Marco Pierre White

  marco_visit_one = Visit.new(date: last_week, user: marco_pierre_white, restaurant: noble_rot, number_of_people: 2)
  marco_visit_one.save
  Review.create(content: "Fantastic wine bar. Bloody good food at decent prices. They also do Black Velvet, which is a true gentleman's drink.", rating: 5, visit: marco_visit_one)

  marco_visit_two = Visit.new(date: day_before_yesterday, user: marco_pierre_white, restaurant: st_john, number_of_people: 2)
  marco_visit_two.save
  Review.create(content: "Any serious foodie must have eaten here. The bone marrow is simply a necessary addition for the agenda of anyone passionate about British cooking.", rating: 5, visit: marco_visit_two)

  marco_visit_three = Visit.new(date: yesterday, user: marco_pierre_white, restaurant: luca, number_of_people: 2)
  marco_visit_three.save
  Review.create(content: 'Simple ingredients, well-cooked, with a delciious (and, at times, unusual) wine list. What more could you want? A great little eatery.', rating: 5, visit: marco_visit_three)

  # Gordon Ramsay

  ramsay_visit_one = Visit.new(date: last_week, user: gordon_ramsay, restaurant: st_john, number_of_people: 2)
  ramsay_visit_one.save
  Review.create(content: "I never let a month go by without coming here. Neither should you.", rating: 5, visit: ramsay_visit_one)

  ramsay_visit_two = Visit.new(date: day_before_yesterday, user: gordon_ramsay, restaurant: gloria, number_of_people: 4)
  ramsay_visit_two.save
  Review.create(content: "Delicious Italian place, very on vogue, but good nonetheless. Definitely have the truffle pizza if you come here (as you should).", rating: 4, visit: ramsay_visit_two)

  ramsay_visit_three = Visit.new(date: yesterday, user: gordon_ramsay, restaurant: shawarma_bar, number_of_people: 2)
  ramsay_visit_three.save
  Review.create(content: 'Ever-popular, set within the foodie haven of Exmouth Market. Delicious shawarma, done properly. Great for a casual dinner out.', rating: 5, visit: ramsay_visit_three)

  ramsay_visit_four = Visit.new(date: yesterday, user: gordon_ramsay, restaurant: shawarma_bar, number_of_people: 2)
  ramsay_visit_four.save
  Review.create(content: 'Ever-popular, set within the foodie haven of Exmouth Market. Delicious shawarma, done properly. Great for a casual dinner out.', rating: 5, visit: ramsay_visit_three)

  # Giles Coren

  coren_visit_one = Visit.new(date: yesterday, user: giles_coren, restaurant: st_john, number_of_people: 2)
  coren_visit_one.save
  Review.create(content: "Simple British cooking at its best. A behemoth of the London food scene, which you need to have been to. If you haven't been here yet, it should be high on the list for your next meal out.", rating: 5, visit: coren_visit_one)

  coren_visit_two = Visit.new(date: day_before_yesterday, user: giles_coren, restaurant: noble_rot, number_of_people: 4)
  coren_visit_two.save
  Review.create(content: "Wine lovers likely know of this place already, but the food here is also simply delicious. The wines are wide-ranging and the staff more than capable of advising you on what to drink with your meal.", rating: 4, visit: coren_visit_two)

  coren_visit_three = Visit.new(date: yesterday, user: giles_coren, restaurant: luca, number_of_people: 2)
  coren_visit_three.save
  Review.create(content: 'Luca burst onto the Clerkenwell food scene and it looks like it will hold a (well-deserved) leading spot in that scene for the foreseeable future.', rating: 5, visit: coren_visit_three)

  coren_visit_four = Visit.new(date: last_week, user: giles_coren, restaurant: white_rabbit, number_of_people: 2)
  coren_visit_four.save
  Review.create(content: 'White Rabbit is the jewel in the crown of the Moscow dining scene in a city in which it can be difficult to find high quality food.', rating: 5, visit: coren_visit_four)

  coren_visit_five = Visit.new(date: last_year, user: giles_coren, restaurant: cracco, number_of_people: 4)
  coren_visit_five.save
  Review.create(content: 'I was originally very excited to eat here. Unfortunately, it provide to be overblown and over-pretentious. The ingredients are high quality enough but the end result is not quite what Cracco aims to achieve.', rating: 2, visit: coren_visit_five)

  coren_visit_six = Visit.new(date: last_year, user: giles_coren, restaurant: le_bernardin, number_of_people: 4)
  coren_visit_six.save
  Review.create(content: "No point coming here if you don't like seafood, but you're in for the meal of your life if you do. Just, quite simply, a classic.", rating: 5, visit: coren_visit_six)

  coren_visit_seven = Visit.new(date: last_year, user: giles_coren, restaurant: stendhal, number_of_people: 4)
  coren_visit_seven.save
  Review.create(content: "Great little osteria for authentic Milanese cuisine.", rating: 4, visit: coren_visit_seven)

  coren_visit_seven = Visit.new(date: last_year, user: giles_coren, restaurant: roganic, number_of_people: 4)
  coren_visit_seven.save
  Review.create(content: "If you like eating cardboard, then you should definitely try this place.", rating: 1, visit: coren_visit_seven)

  # Nigella Lawson

  nigella_visit_one = Visit.new(date: yesterday, user: nigella_lawson, restaurant: st_john, number_of_people: 2)
  nigella_visit_one.save
  Review.create(content: "Truly delicious! You may need to be quite adventurous in what parts of the animal you are happy to eat, but if you are, then you are in for a treat!", rating: 5, visit: nigella_visit_one)

  nigella_visit_two = Visit.new(date: day_before_yesterday, user: nigella_lawson, restaurant: trattoria_pontini, number_of_people: 4)
  nigella_visit_two.save
  Review.create(content: "Come here and you see why the locals love it so much. Off the main tourist track, but well worth the visit.", rating: 4, visit: nigella_visit_two)

  nigella_visit_three = Visit.new(date: yesterday, user: nigella_lawson, restaurant: luca, number_of_people: 2)
  nigella_visit_three.save
  Review.create(content: 'Gorgeous-looking restaurant with food to match. It has become a stalwart for me when eating out.', rating: 5, visit: nigella_visit_three)

  nigella_visit_four = Visit.new(date: last_year, user: nigella_lawson, restaurant: bohemian, number_of_people: 4)
  nigella_visit_four.save
  Review.create(content: 'The policy of being a secret restaurant always annoys me a little. However, if you are lucky enough to eat here, then you are in for a treat. Delicious wagyu beef sashimi and charming speakeasy surroundings.', rating: 4, visit: nigella_visit_four)

  nigella_visit_five = Visit.new(date: last_week, user: nigella_lawson, restaurant: jean_georges, number_of_people: 2)
  nigella_visit_five.save
  Review.create(content: 'Jean-Georges never fails to deliver. Exquisite, class French haute cuisine.', rating: 5, visit: nigella_visit_five)

  nigella_visit_five = Visit.new(date: last_week, user: nigella_lawson, restaurant: drogheria_milanese, number_of_people: 4)
  nigella_visit_five.save
  Review.create(content: 'A delight in the heart of Milan. Italian-style tapas dishes. Delicious.', rating: 4, visit: nigella_visit_five)



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
