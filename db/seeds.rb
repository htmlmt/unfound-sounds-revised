round_one = Round.create(month: Date.parse("2014-05-01"))

beck = Album.create(title: "Morning Phase", band: "Beck", rdio_link: "https://rd.io/i/QUWZfCJhwN8/", link: "https://rd.io/i/QUWZfCJhwN8/", link_text: "listen on Rdio")
bonnie = Album.create(title: "I See a Darkness", band: "Bonnie \"Prince\" Billy", rdio_link: nil, link: "https://www.youtube.com/watch?v=LAriDxTeed8", link_text: "listen on YouTube")
patrick = Album.create(title: "Adventures in Your Own Backyard", band: "Patrick Watson", link: "http://www.rdio.com/artist/Patrick_Watson/album/Adventures_In_Your_Own_Backyard_1/", link_text: "listen on Rdio")

round_one.albums << beck
round_one.albums << bonnie
round_one.albums << patrick

fruitful = Place.create(name: "Fruitful Design", description: "Fruitful is a unique graphic design shop in Omaha, Nebraska, that specializes in branding, illustration, print media and web design.", link: "http://fruitful-design.com/", link_text: "visit Fruitful Design online", address: "2740 N. 60th Ave.", city: "Omaha", state: "NE")

beck.places << fruitful

measure = Place.create(name: "Measure Cut Cut", description: "Measure Cut Cut specializes in working with folks with discerning and myriad tastes to create affordable, one-of-a-kind pieces that tell a story you and your home or business.", link: "https://www.facebook.com/measurecutcut", link_text: "follow Measure Cut Cut on Facebook", address: "2452 Harney St", city: "Omaha", state: "NE")

bonnie.places << measure

ocs = Place.create(name: "Omaha Code School", description: "Omaha Code School offers an intensive web development course in the Silicon Prairie. Twelve weeks, full-time, and you will become a hireable web developer.", link: "https://www.facebook.com/OmahaCodeSchool", link_text: "follow OCS on Facebook", address: "200 S. 31st Ave.", city: "Omaha", state: "NE")

patrick.places << ocs

jeff = User.create(email: "jeff@example.com", first_name: "Jeff", last_name: "Spiehs", password: "password", password_confirmation: "password", username: "jeff")

tim = User.create(email: "tim@example.com", first_name: "Tim", last_name: "Guthrie", password: "password", password_confirmation: "password", username: "tim")

shelly = User.create(email: "shelly@example.com", first_name: "Shelly Lynn", last_name: "Xiong", password: "password", password_confirmation: "password", username: "shelly")

round_one.users << [jeff, tim, shelly]

beck.create_find(user_id: jeff.id)
bonnie.create_find(user_id: tim.id)
patrick.create_find(user_id: shelly.id)