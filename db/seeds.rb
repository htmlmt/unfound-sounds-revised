round_one = Round.create(month: Date.parse("2014-05-01"))

beck = Album.create(title: "Morning Phase", band: "Beck", rdio_link: "https://rd.io/i/QUWZfCJhwN8/", finder: "Jeff Spiehs")
bonnie = Album.create(title: "I See a Darkness", band: "Bonnie \"Prince\" Billy", link: "https://www.youtube.com/watch?v=LAriDxTeed8", link_text: "listen on YouTube", finder: "Tim Guthrie")
patrick = Album.create(title: "Adventures in Your Own Backyard", band: "Patrick Watson", rdio_link: "https://rd.io/i/QUWZfCJINgM/", finder: "Shelly Lynn Xiong")

round_one.albums << beck
round_one.albums << bonnie
round_one.albums << patrick

fruitful = Place.create(name: "Fruitful Design", description: "Fruitful is a unique graphic design shop in Omaha, Nebraska, that specializes in branding, illustration, print media and web design.", link: "http://fruitful-design.com/", link_text: "visit Fruitful Design online", address: "2740 N. 60th Ave.", city: "Omaha", state: "NE")

beck.places << fruitful

measure = Place.create(name: "Measure Cut Cut", description: "Measure Cut Cut specializes in working with folks with discerning and myriad tastes to create affordable, one-of-a-kind pieces that tell a story you and your home or business.", link: "https://www.facebook.com/measurecutcut", link_text: "follow Measure Cut Cut on Facebook", address: "2452 Harney St", city: "Omaha", state: "NE")

bonnie.places << measure

ocs = Place.create(name: "Omaha Code School", description: "Omaha Code School offers an intensive web development course in the Silicon Prairie. Twelve weeks, full-time, and you will become a hireable web developer.", link: "https://www.facebook.com/OmahaCodeSchool", link_text: "follow OCS on Facebook", address: "200 S. 31st Ave.", city: "Omaha", state: "NE")

patrick.places << ocs

round_two = Round.create(month: Date.parse("2014-06-01"))

kishi = Album.create(title: "Lighght", band: "Kishi Bashi", rdio_link: "https://rd.io/i/QUWZfCIclAc/", finder: "Molly Misek")
bright = Album.create(title: "I'm Wide Awake, It's Morning", band: "Bright Eyes", rdio_link: "https://rd.io/i/QUWZfCJUC3E/", finder: "Dan McCarthy")
lucius = Album.create(title: "Wildewoman", band: "Lucius", rdio_link: "https://rd.io/i/QUWZfCJrd9U/", finder: "Brittany Rypkema")

round_two.albums << kishi
round_two.albums << bright
round_two.albums << lucius

incommon = Place.create(name: "inCOMMON", description: "inCOMMON unites and strengthens vulnerable neighborhoods by listening, building relationships and empowering residents.", link: "https://www.facebook.com/inCOMMON", link_text: "follow inCOMMON on Facebook", address: "1340 Park Ave", city: "Omaha", state: "NE")

kishi.places << incommon

focus = Place.create(name: "Focus Mastering", description: "Focus Mastering is a full-service mastering studio that utilizes velocity-type bass trapping as well as the new RPG pressure zone bass trapping for smooth, extended low frequency response.", link: "https://www.facebook.com/pages/Focus-Mastering/153011011429943", link_text: "follow Focus Mastering on Facebook", address: "14910 Grover St. #100", city: "Omaha", state: "NE")

bright.places << focus

ivanna = Place.create(name: "Ivanna Cone", description: "A one-of-a-kind, family-owned and -operated premium handmade ice cream shop, Ivanna Cone has been around for more than a decade.", link: "https://www.facebook.com/ivannacone", link_text: "follow Ivanna Cone on Facebook", address: "701 P St #101", city: "Lincoln", state: "NE")

lucius.places << ivanna

round_three = Round.create(month: Date.parse("2014-07-01"))

kill_county = Album.create(title: "Dust In Wire", band: "Kill County", rdio_link: "https://rd.io/i/QUWZfCIOln8/", finder: "Dan and Liz Nissen")
jack_hotel = Album.create(title: "Good Sons And Daughters", band: "Jack Hotel", rdio_link: "", finder: "Matthew Mejstrik")
first_aid_kit = Album.create(title: "Stay Gold", band: "First Aid Kit", rdio_link: "https://rd.io/i/QUWZfCIacDw/", finder: "Jeff Spiehs")

round_three.albums << kill_county
round_three.albums << jack_hotel
round_three.albums << first_aid_kit

engage = Place.create(name: "Engage Paperie", description: "Engage Paperie is a local stationer offering cards, note sets and a wide variety of paper goods ranging from quirky and fun to timeless and elegant. Stop in to the shop in downtown Sioux Falls at 328 S. Phillips Ave.", link: "https://www.facebook.com/pages/Engage-Paperie/640934342605339", link_text: "follow Engage on Facebook", address: "328 S Phillips Ave", city: "Sioux Falls", state: "SD")

kill_county.places << engage

kzum = Place.create(name: "89.3 KZUM", description: "KZUM has been a fixture in Lincoln since 1978, when it was formed to bring about more diverse programming through a community-based program: one based from support through memberships, donations, grants from charitable foundations and underwriting.", link: "https://www.facebook.com/kzumradio", link_text: "follow KZUM on Facebook", address: "3534 S 48th St #6", city: "Lincoln", state: "NE")

jack_hotel.places << kzum

creative = Place.create(name: "Omaha Creative Institute", description: "Omaha Creative Institute is a 501(c)3 focusing on support of the arts in our region. We have two-fold intentions to build audience for the arts and to support artists with tools to allow them to make a living through their artistic practice.", link: "https://www.facebook.com/omahacreativeinstitute", link_text: "follow Omaha Creative Institute on Facebook", address: "1516 Cuming St", city: "Omaha", state: "NE")

first_aid_kit.places << creative

round_four = Round.create(month: Date.parse("2014-08-01"))

chuck_brown = Album.create(title: "Bustin' Loose", band: "Chuck Brown", rdio_link: "https://rd.io/i/QUWZfCJaVUc/", finder: "Will Hertzler")
eternal_summers = Album.create(title: "The Drop Beneath", band: "Eternal Summers", rdio_link: "https://rd.io/i/QUWZfCJgZxE/", finder: "Curtis Wong")
mccarthy_trenching = Album.create(title: "Plays Piano", band: "McCarthy Trenching", finder: "Jordan Delmundo")

round_four.albums << chuck_brown
round_four.albums << eternal_summers
round_four.albums << mccarthy_trenching

grateful = Place.create(name: "Grateful Bread", description: "Providing Lincoln with its best vegetarian soul food since 1998. Owned and operated by the Flotree family. Located at 1625 S. 17th St. in Lincoln and open Wednesday through Sunday from 11 a.m. to 6 p.m.", link: "https://www.facebook.com/pages/Grateful-BreadFreakbeat-Vegetarian/312793177888", link_text: "follow Grateful Bread on Facebook", address: "1625 S. 17th St.", city: "Lincoln", state: "NE")

chuck_brown.places << grateful

total_drag = Place.create(name: "Total Drag", description: "Total Drag is an independent record and tape store with a dedicated space for original music. Always all ages. Stop by the shop at 307 E. 12th St., in Sioux Falls, open Tuesday through Saturday.", link: "https://www.facebook.com/totaldragrecords", link_text: "follow Total Drag on Facebook", address: "307 E. 12th St.", city: "Sioux Falls", state: "SD")

eternal_summers.places << total_drag

ocf = Place.create(name: "Omaha Community Foundation", description: "OCF is a nonprofit organization seeking out what's good about Omaha and helping that positive momentum grow. Its mission is to coordinate informed, effective and innovative giving that inspires positive change within our communities.", link: "https://www.facebook.com/omahafoundation", link_text: "follow Omaha Community Foundation on Facebook", address: "302 S. 36th St. #100", city: "Omaha", state: "NE")

mccarthy_trenching.places << ocf

round_five = Round.create(month: Date.parse("2014-09-01"))

deleted_scenes = Album.create(title: "Lithium Burn", band: "Deleted Scenes", rdio_link: "https://rd.io/i/QUWZfCJg-AI/", finder: "Aaron Bauer")
willie = Album.create(title: "Red Headed Stranger", band: "Willie Nelson", rdio_link: "https://rd.io/i/QUWZfCJclmA/", finder: "Jacob Zlomke")
future_islands = Album.create(title: "Singles", band: "Future Islands", rdio_link: "https://rd.io/i/QUWZfCIfQkw/", finder: "Tyler Swain")

round_five.albums << deleted_scenes
round_five.albums << willie
round_five.albums << future_islands

lemonly = Place.create(name: "Lemonly", description: "Lemonly specializes in interactive, static and video infographics, data visualization, and animation. They'll help turn your lemons into lemonade.", link: "https://www.facebook.com/thinklemonly", link_text: "follow Lemonly on Facebook", address: "431 N. Phillips Ave. #440", city: "Sioux Falls", state: "SD")

deleted_scenes.places << lemonly

novel_idea = Place.create(name: "A Novel Idea", description: "A Novel Idea offers two floors of quirky, atypical, one-of-a-kind, used, rare & out-of-print books.", link: "https://www.facebook.com/anovelideabookstore", link_text: "follow A Novel Idea on Facebook", address: "118 N. 14th St.", city: "Lincoln", state: "NE")

willie.places << novel_idea

grain = Place.create(name: "Grain & Mortar", description: "Grain & Mortar creates business identities, and teaches people how to use them. Best of all, they do everything with our core values of honesty, hard work, and trust.", link: "https://www.facebook.com/grainandmortar", link_text: "follow Grain & Mortar on Facebook", address: "1111 N. 13th St.", city: "Omaha", state: "NE")

future_islands.places << grain

round_six = Round.create(month: Date.parse("2015-06-01"))

meat_puppets = Album.create(title: "II", band: "Meat Puppets", rdio_link: "https://rd.io/i/QUWZfCJT5o8/")
father_john = Album.create(title: "I Love You, Honeybear", band: "Father John Misty", rdio_link: "https://rd.io/i/QUWZfCISDqU/")
tallest_man = Album.create(title: "Dark Bird Is Home", band: "The Tallest Man on Earth", rdio_link: "https://rd.io/i/QUWZfCIJ2rE/")

round_six.albums << meat_puppets
round_six.albums << father_john
round_six.albums << tallest_man

fresh_produce = Place.create(name: "Fresh Produce", description: "", link: "http://pickfresh.com", link_text: "visit Fresh Produce online", address: "400 N. Main Ave., Suite 100", city: "Sioux Falls", state: "SD")

meat_puppets.places << fresh_produce

nap = Place.create(name: "Nebraska Aids Project", description: "", link: "http://www.nap.org/", link_text: "visit Nebraska Aids Project online", address: "250 S. 77th St.", city: "Omaha", state: "NE")

father_john.places << nap

nonprofit = Place.create(name: "Nonprofit Hub", description: "", link: "http://lincoln.nonprofithub.org/", link_text: "visit The Nonprofit Hub online", address: "211 N. 14th St.", city: "Lincoln", state: "NE")

tallest_man.places << nonprofit