puts "Clearing database..."

User.destroy_all
Tour.destroy_all
Track.destroy_all

puts "Adding Winson, Alex & Adora as users to the database."

users_array = [
  {
  email: "winson@tourio.com",
  first_name: 'winson',
  last_name: 'winson',
  about: "Experienced traveller and blogger who loves eating destinations.",
  password: "123456"
  },
  {
  email: "adora@tourio.com",
  first_name: 'adora',
  last_name: 'goh',
  about: "I'm an aspiring travel blogger, and I love to travel to unique, interesting destinations",
  password: "password",
  },
  {
  email: "alex@tourio.com",
  first_name: 'alex',
  last_name: 'vassilou',
  about: "I love to travel to eat.",
  password: "123456"
  },
  {
  email: "dale@tourio.com",
  first_name: 'dale',
  last_name: 'hindle',
  about: "Ask me anything about Instagram, or Canada.",
  password: "123456"
  },
  {
  email: "ben@tourio.com",
  first_name: 'ben',
  last_name: 'linder',
  about: "Surf's Up!",
  password: "123456"
  },
  {
  email: "ben@tourio.com",
  first_name: 'ben',
  last_name: 'linder',
  about: "Surf's Up!",
  password: "123456"
  },
  {
  email: "damon@tourio.com",
  first_name: 'damon',
  last_name: 'damon',
  about: "Surf's Up! Yeah boyye!",
  password: "123456"
  },
  {
  email: "chris@tourio.com",
  first_name: 'chris',
  last_name: 'ward',
  about: "Yeah, I know.",
  password: "123456"
  },
  {
  email: "rutger@tourio.com",
  first_name: 'rutger',
  last_name: 'swirski',
  about: "I like to fish.",
  password: "123456"
  },
  {
  email: "daniel@tourio.com",
  first_name: 'daniel',
  last_name: 'daniel',
  about: "Cool.",
  password: "123456"
  },
  {
  email: "paal@tourio.com",
  first_name: 'paal',
  last_name: 'paal',
  about: "Everything's good.",
  password: "123456"
  },
]


User.create!(users_array)



users = User.all
users[0].remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJjr1h7ibl8wNFU_rZgPLxHv0yXwriJVoIAGIsLjabc2TXgfnj-Q"
users[0].save
users[1].remote_photo_url = "https://www.girlgeekupnorth.co.uk/wp-content/uploads/2016/12/Princess-Leia-1.jpg"
users[1].save
users[2].remote_photo_url = "https://s.yimg.com/ny/api/res/1.2/T7ka83cKaoCASsJRbZQmpw--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/en/homerun/feed_manager_auto_publish_494/905f723f3db3e3767cfc0bb5e13bf8f8"
users[2].save





puts "3 users added to your database!"
puts "Adding 5 epic tours to the database."


tours_array = [
  {
  title: "Classic Melbourne",
  start_location: "Melbourne",
  description: "A local's audio guide to the must visit places in Melbourne - suitable for first time explorers and those looking to delve a little deeper to explore the city's rich character. From history and architecture to contemporary laneway culture, sport or street art – we have your interests covered. This audio tour is a new and personalized way to really experience the city.",
  user: User.last,
  category: "Sightseeing", #TODO: Create a dropdown of categories to choose from (mayben will need new table? But don't worry about it yet)
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
  title: "Cycling Sydney",
  start_location: "Perth",
  description: "Go on mountain bike trail through the parks of Perth to discover the habitat of kangaroos and wilderbeasts.",
  user: User.first,
  category: "Sightseeing",
  language: "English"
  },
  {
  title: "Tuk Tuk racing",
  start_location: "Bangkok",
  description: "Jump on a tuk tuk and follow our audio tour through the famous busy streets of Bangkok.",
  user: User.first,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Je t'aime Hanoi!",
  start_location: "Hanoi",
  description: "A historical take on the beautiful city of Hanoi, from a frenchman's perspective.",
  user: User.first,
  category: "Adventure",
  language: "French"
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
  title: "Hidden Melbourne cafes",
  start_location: "Melbourne",
  description: "Go on an audio tour where we will show you how to find the hidden cafe gems in Melbourne city.",
  user: User.first,
  category: "Food",
  language: "English"
  }
]

Tour.create!(tours_array)



# TODO: add photos to seeds ---->> Adjust this to use the first track picture in the tracks list

tours = Tour.all

tours.each do |tour|
  photo = Photo.new
  photo.remote_photo_url = "https://source.unsplash.com/1600x900/?#{tour.title}"
  photo.tour = tour
  photo.save
end



puts "Many awesome tours added to your database!"



track_titles = ['Melbourne',
  'Federation square',
  'Melbourne State Library',
  'Melbourne Central',
  'Flinders Lane',
  'Melbourne Gaol'
   ]

track_locations = ['Melbourne',
  'Federation square',
  'Melbourne State Library',
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

photo_urls = ['https://source.unsplash.com/1600x900/?#{track.title}',
  'https://source.unsplash.com/1600x900/?#{track.title}',
  'https://source.unsplash.com/1600x900/?#{track.title}',
  'https://source.unsplash.com/1600x900/?#{track.title}',
  'https://source.unsplash.com/1600x900/?#{track.title}',
  'https://source.unsplash.com/1600x900/?#{track.title}'
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
