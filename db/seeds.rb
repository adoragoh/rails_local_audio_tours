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
  title: "1900s history booze cruise",
  start_location: "Melbourne",
  description: "Super awesome booze cruise with lots of chicks Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam repellat pariatur, quis suscipit, sed, nostrum provident quod eligendi assumenda saepe eius adipisci aspernatur debitis tempore nihil voluptatibus corrupti, optio eveniet..",
  user: User.last,
  category: "Boozy", #TODO: Create a dropdown of categories to choose from (mayben will need new table? But don't worry about it yet)
  language: "English"
  },
  {
  title: "Camel ride across the Nullabor Desert",
  start_location: "Alice Springs",
  description: "Super awesome camel rides with lots of digital nomads. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo natus maiores laborum ipsam ea aut, accusantium ratione. Perferendis, consequuntur, adipisci. Magnam ad, placeat cum. Maxime architecto reprehenderit, dolores hic minus?",
  user: User.last,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Hipster bar crawl in Newtown",
  start_location: "Sydney",
  description: "Super awesome pub crawl with lots of httpsters. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero quibusdam amet ad magnam esse expedita aliquam quasi id voluptas neque alias quam eveniet officia voluptatum distinctio, aperiam necessitatibus quae quisquam.",
  user: User.last,
  category: "Boozy",
  language: "English"
  },
  {
  title: "Ghost Tour",
  start_location: "Melbourne",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. In porro mollitia, quam voluptates ipsam iusto, animi illum doloremque rerum hic repudiandae ad dolor impedit eum itaque. Necessitatibus animi ab, natus.",
  user: User.last,
  category: "Supernatural",
  language: "English"
  },
  {
  title: "Gold diggers fantasy camp",
  start_location: "Ballarat",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.last,
  category: "History",
  language: "English"
  },
  {
  title: "Foodies galore",
  start_location: "Queensland",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.first,
  category: "Food",
  language: "English"
  },
  {
  title: "Diving with the sharks",
  start_location: "Cairns",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Live it up with the crocodiles",
  start_location: "Darwin",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Tuk Tuk racing",
  start_location: "Bangkok",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.first,
  category: "Sightseeing",
  language: "English"
  },
  {
  title: "Diving with corals",
  start_location: "Phi Phi Island",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Fight like a viking",
  start_location: "Edinburgh",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.first,
  category: "History",
  language: "English"
  },
  {
  title: "See Everest",
  start_location: "Nepal",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "MCG tours",
  start_location: "Melbourne Cricket Grounds",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.first,
  category: "Sightseeing",
  language: "English"
  },
  {
  title: "Penang Foodies Tour",
  start_location: "Penang",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.first,
  category: "Food",
  language: "English"
  },
  {
  title: "Sand dune boarding",
  start_location: "Perth",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Hidden Melbourne cafes",
  start_location: "Melbourne",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi commodi temporibus, veritatis quidem error, aperiam amet velit, ratione dolore eum id unde. Modi dolor enim ratione labore ipsum, sequi quas. Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
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
  # "https://res.cloudinary.com/dm25xqrrj/video/upload/v1551761977/samples/David_s_Dream.mp3"
  photo.tour = tour
  photo.save
  # p.remote_photo_url = "https://source.unsplash.com/1600x900/?#{tour.title}"
  # p.save
  # tour.photo = p
  # tour.save
end



puts "Many awesome tours added to your database!"

tracks_array = [
  {
    title: "Port Melbourne",
    location: "Port Melbourne",
    tour: Tour.first
  },
  {
    title: "Docklands",
    location: "Docklands",
    tour: Tour.first
  },
  {
    title: "Yarra River",
    location: "Yarra River",
    tour: Tour.first
  }
]

puts "Adding 3 audio tracks to our first tour..."

Track.create!(tracks_array)

tracks = Track.all

tracks.each do |track|
  track.remote_audio_url = "https://res.cloudinary.com/dm25xqrrj/video/upload/v1551761977/samples/David_s_Dream.mp3"
  track.save
end

puts "3 audio tracks added to the first tour!"

