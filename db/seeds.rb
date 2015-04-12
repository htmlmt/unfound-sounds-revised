round = Round.create(month: Date.parse("2014-05-01"))

beck = Album.create(title: "Morning Phase", band: "Beck", cover: "http://rdio1img-a.akamaihd.net/album/e/9/2/00000000003e929e/3/square-600.jpg", rdio_link: "https://rd.io/i/QUWZfCJhwN8/", link: "https://rd.io/i/QUWZfCJhwN8/", link_text: "listen on Rdio")
bonnie = Album.create(title: "I See a Darkness", band: "Bonnie \"Prince\" Billy", cover: "http://24.media.tumblr.com/tumblr_mbwx7pmaqe1rqkia0o1_1280.jpg", rdio_link: nil, link: "https://www.youtube.com/watch?v=LAriDxTeed8", link_text: "listen on YouTube")
patrick = Album.create(title: "Adventures in Your Own Backyard", band: "Patrick Watson", cover: "http://blog.atwestend.com/wp-content/uploads/2012/08/Patrick-Watson-Adventures-In-Your-Own-Backyard-11.jpeg", link: "http://www.rdio.com/artist/Patrick_Watson/album/Adventures_In_Your_Own_Backyard_1/", link_text: "listen on Rdio")

round.albums << beck
round.albums << bonnie
round.albums << patrick

fruitful = Place.create(name: "Fruitful Design", description: "Fruitful is a unique graphic design shop in Omaha, Nebraska, that specializes in branding, illustration, print media and web design.", link: "http://fruitful-design.com/", link_text: "visit Fruitful Design online", address: "2740 N. 60th Ave.", city: "Omaha", state: "NE")

beck.places << fruitful

measure = Place.create(name: "Measure Cut Cut", description: "Measure Cut Cut specializes in working with folks with discerning and myriad tastes to create affordable, one-of-a-kind pieces that tell a story you and your home or business.", link: "https://www.facebook.com/measurecutcut", link_text: "follow Measure Cut Cut on Facebook", address: "2452 Harney St", city: "Omaha", state: "NE")

bonnie.places << measure

ocs = Place.create(name: "Omaha Code School", description: "Omaha Code School offers an intensive web development course in the Silicon Prairie. Twelve weeks, full-time, and you will become a hireable web developer.", link: "https://www.facebook.com/OmahaCodeSchool", link_text: "follow OCS on Facebook", address: "200 S. 31st Ave.", city: "Omaha", state: "NE")

patrick.places << ocs

beck.create_user(email: "jeff@example.com", first_name: "Jeff", last_name: "Spiehs", password: "password", password_confirmation: "password", username: "jeffspiehs")

bonnie.create_user(email: "tim@example.com", first_name: "Tim", last_name: "Guthrie", password: "password", password_confirmation: "password", username: "timguthrie")