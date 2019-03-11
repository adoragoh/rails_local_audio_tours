# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database..."

User.destroy_all
Tour.destroy_all
Track.destroy_all

puts "Adding Winson, Alex & Adora as users to the database."

users_array = [
  {
  email: "winson@lat.com",
  password: "123456"
  },
  {
  email: "adora@lat.com",
  password: "password"
  },
  {
  email: "alex@lat.com",
  password: "123456"
  }
]

User.create!(users_array)

puts "3 users added to your database!"

puts "Adding 5 epic tours to the database."


tours_array = [
  {
  title: "Classic Melbourne",
  start_location: "Melbourne",
  description: "A local's audio guide to the must visit places in Melbourne - suitable for first time explorers and those looking to delve a little deeper to explore the city's rich character. From history and architecture to contemporary laneway culture, sport or street art – we have your interests covered. This audio tour is a new and personalized way to really experience the city.",
  user: User.last,
  category: "Adventure", #TODO: Create a dropdown of categories to choose from (mayben will need new table? But don't worry about it yet)
  language: "English"
  },

  {
  title: "1900s history booze cruise",
  start_location: "Docklands",
  description: "Super awesome booze cruise with lots of chicks. In this audio tour, we will explore new bars in the historic sites of Melbourne. Bring along your friends and your booze appetite. We will live it up like its 1989!",
  user: User.last,
  category: "Boozy", #TODO: Create a dropdown of categories to choose from (mayben will need new table? But don't worry about it yet)
  language: "English"
  },
  {
  title: "Ride across the Nullabor Desert",
  start_location: "Alice Springs",
  description: "Follow our awesome audio driving tour across the Nullabor Desert and understand the interesting sights and places of interest in the desert that you pass by ",
  user: User.last,
  category: "Adventure",
  language: "English"
  },
  {
  title: "1800s Sydney Underbelly",
  start_location: "Sydney",
  description: "Take an audio tour trip back in time to 1816, the year where the Italian Mafia ruled the streets of Sydney.",
  user: User.last,
  category: "Boozy",
  language: "English"
  },
  {
  title: "Ghost Tour",
  start_location: "Melbourne Gaol",
  description: "Not for the faint hearted! Try this unique tour to find out more about Melbourne's famous haunted locations.",
  user: User.last,
  category: "Supernatural",
  language: "English"
  },
  {
  title: "Gold diggers fantasy tour",
  start_location: "Ballarat",
  description: "Explore Ballarat through the lens of a local gold digger.",
  user: User.last,
  category: "History",
  language: "English"
  },
  {
  title: "Foodies galore",
  start_location: "Queensland",
  description: "Find the best places to eat in Queensland and discover an appetite inside of you you never knew.",
  user: User.first,
  category: "Food",
  language: "English"
  },
  {
  title: "Cycling with the kangaroos and wilderbeasts",
  start_location: "Perth",
  description: "Go on mountain bike trail through the parks of Perth to discover the habitat of kangaroos and wilderbeasts.",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Live it up with the crocodiles",
  start_location: "Darwin",
  description: "Do a walking audio tour through the infamous billabongs of Darwin. Not for the faint hearted!",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Tuk Tuk racing",
  start_location: "Bangkok",
  description: "Jump on a tuk tuk and follow our audio tour through the famous busy streets of Bangkok.",
  user: User.first,
  category: "Sightseeing",
  language: "English"
  },
  {
  title: "Walkabout in Phi Phi",
  start_location: "Phi Phi Island",
  description: "Have a personalised audio tour of Phi Phi island and experience the island the way locals do.",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Life as a viking",
  start_location: "Edinburgh",
  description: "Walk through the cobbled streets of Edinburgh in a kilt and taste the exciting life of a viking in the 1800s.",
  user: User.first,
  category: "History",
  language: "English"
  },
  {
  title: "See Everest",
  start_location: "Nepal",
  description: "Follow our audio tour to the peak of the highest mountain on earth.",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "MCG tours",
  start_location: "Melbourne Cricket Grounds",
  description: "Have a free walking audio tour around one of the most important sporting grounds in Australian history.",
  user: User.first,
  category: "Sightseeing",
  language: "English"
  },
  {
  title: "Penang Foodies Tour",
  start_location: "Penang",
  description: "Follow an audio tour food trail from a local's perspective. Find hidden gems of the city of Penang well-kept from the average tourist.",
  user: User.first,
  category: "Food",
  language: "English"
  },
  {
  title: "Sand dune ATV",
  start_location: "Perth",
  description: "Jump on a quad bike and experience what its like to live in the sand dunes and experience the different attractions.",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Hidden Melbourne cafes",
  start_location: "Melbourne",
  description: "Follow our audio tour where we will show you how to find the hidden cafe gems in Melbourne city.",
  user: User.first,
  category: "Food",
  language: "English"
  }
]

Tour.create!(tours_array)


# TODO: add photos to seeds

tours = Tour.all

tours.each do |tour|
  photo = Photo.new
  photo.remote_photo_url = "https://source.unsplash.com/1600x900/?#{tour.title}"
  photo.tour = tour
  photo.save
  # p.remote_photo_url = "https://source.unsplash.com/1600x900/?#{tour.title}"
  # p.save
  # tour.photo = p
  # tour.save
end



puts "Many awesome tours added to your database!"

# tracks_array = [
#   {
#     title: "Melbourne City",
#     location: "Federation square",
#     tour: Tour.first
#   },
#   {
#     title: "S",
#     location: "Docklands",
#     tour: Tour.first
#   },
#   {
#     title: "Eureka Skydeck",
#     location: "Eureka Skydeck",
#     tour: Tour.first
#   }
# ]


# puts "Adding 3 audio tracks to our first tour..."

# Track.create!(tracks_array)

# tracks = Track.all


track_titles = ['Melbourne',
  'Federation square',
  'State Library Victoria',
  'Melbourne Central',
  'Flinders Lane',
  'Melbourne Gaol'
   ]

track_locations = ['Melbourne',
  'Federation square',
  'State Library Victoria',
  'Melbourne Central',
  'Flinders Lane',
  'Melbourne Gaol']

track_urls = ['https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Melbourne_central_take_1.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Flinders_lane_take_1.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Melbourne_gaol.3gp'
]

tours.each do |tour|
  counter = 0
  track_titles.each do |track_title|
    if counter != track_titles.length-1
      track = Track.create(title: track_titles[counter], location: track_locations[counter], tour: tour )
      track.remote_audio_url = track_urls[counter]
      track.remote_photo_url = "https://source.unsplash.com/1600x900/?#{track.title}"
      track.save
      counter += 1
    end
  end
end


puts "Awesome audio tracks added to the tours!"
