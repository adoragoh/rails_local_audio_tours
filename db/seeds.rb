puts "Clearing database..."

User.destroy_all
Tour.destroy_all
Track.destroy_all

puts "Adding Winson, Alex & Adora as users to the database."

users_array = [
  {
  email: "winson@tourio.com",
  first_name: 'winson',
  last_name: 'tan',
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
  email: "damon@tourio.com",
  first_name: 'damon',
  last_name: 'cool',
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
  last_name: 'gordon',
  about: "Cool.",
  password: "123456"
  },
  {
  email: "paal@tourio.com",
  first_name: 'paal',
  last_name: 'chill',
  about: "Everything's good.",
  password: "123456"
  }
]


User.create!(users_array)


win = User.find_by(first_name: 'winson')
win.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJjr1h7ibl8wNFU_rZgPLxHv0yXwriJVoIAGIsLjabc2TXgfnj-Q"
win.save
adora = User.find_by(first_name: 'adora')
adora.remote_photo_url = "https://www.girlgeekupnorth.co.uk/wp-content/uploads/2016/12/Princess-Leia-1.jpg"
adora.save
alex = User.find_by(first_name: 'alex')
alex.remote_photo_url = "https://s.yimg.com/ny/api/res/1.2/T7ka83cKaoCASsJRbZQmpw--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/en/homerun/feed_manager_auto_publish_494/905f723f3db3e3767cfc0bb5e13bf8f8"
alex.save





puts "3 users added to your database!"
puts "Adding 5 epic tours to the database."


tours_array = [
  {
  title: "Classic Melbourne",
  start_location: "Melbourne",
  description: "A local's audio guide to the must visit places in Melbourne - suitable for first time explorers and those looking to delve a little deeper to explore the city's rich character. From history and architecture to contemporary laneway culture, sport or street art – we have your interests covered. This audio tour is a new and personalized way to really experience the city.",
  user: win,
  category: "Sightseeing", #TODO: Create a dropdown of categories to choose from (mayben will need new table? But don't worry about it yet)
  language: "English"
  },
  {
  title: "Instagram Influencers Walk",
  start_location: "St Kilda Beach, Melbourne",
  description: "See and be seen at some of the most Insta-worthy spots on the Melbourne coast. If your goal is to make all your followers jealous, then you've come to the right place. We'll make sure that you've got the most envy-inducing photos amongst your group of friends.",
  user: adora,
  category: "Sightseeing",
  language: "English"
  },
  {
  title: "Melbourne Foodies Tour (Not Just Coffee)",
  start_location: "Queen Victoria Market, Melbourne",
  description: "On this walking tour, we'll take you to a bunch of local favourite food stalls, off the tourist-track. Get a glimpse of where Melburnians go when they want a tasty and affordable bite to eat.",
  user: adora,
  category: "Food",
  language: "English",
  },
  {
  title: "How I Met My Sheila",
  start_location: "Carlton Gardens, Melbourne",
  description: "Melbourne has some great spots to woo a woman. The moody weather and the city's quirky personality sets the scene for you to make a great impression. Come with us and discover some of Melbourne's most romantic spots.",
  user: alex,
  category: "Romance",
  language: "English"
  },
  {
  title: "Memory Lane",
  start_location: "Flinders Street,  Melbourne",
  description: "From Batman to bushfires, lets go on a trip down memory lane, or AC/DC lane to find out what shaped Marvelous Melbourne into the hipster capital of Australia.  So grab your latte, hop on your fixie, and prepare to be, like, totally stoked man.",
  user: alex,
  category: "History",
  language: "English"
  },
  {
  title: "Mystery of the Missing Mace",
  start_location: "Parliament House of Victoria",
  description: "In 1891, Melbourne’s sewers caught fire, the city flooded, a pair of legs turned up in the street, and a plague of locusts arrived. In the midst of all this, a precious medieval weapon was stolen from Victorian Parliament, sparking one of the greatest unsolved mysteries in Australian history.  With a $50,000 reward still up for grabs, come with me on this wild ride through Marvelous Melbourne's sordid past and lets try and solve the mystery of the missing mace.",
  user: adora,
  category: "Crime",
  language: "English"
  },
  {
  title: "A Melbourne Love Affair",
  start_location: "Lygon St, Carlton",
  description: "Tall, dark and full bodied, it was love at first whiff. Find out why Starbucks never stood a chance as we dissect Melbournes love of the espresso machine and explore some of this cities hidden gems.  Dont forget to bring an appetite, and at least $4.50",
  user: win,
  category: "Romance",
  language: "English"
  },
  {
  title: "Ghost Tour",
  start_location: "Coburg",
  description: "Shiver me timbers! Are you ready for fright night!  I know the best haunted places in melbourne... boo! gotchya!",
  user: alex,
  category: "Supernatural",
  language: "English"
  },

  {
  title: "Richmond Locals",
  start_location: "Richmond",
  description: "Grab a seat in my fully sick souped up VL commodore, we will cruise down to Chapel St and show off to all the ladies.  Maybe later we can go do some burnouts at Bell Street Maccas",
  user: adora,
  category: "Adrenaline",
  language: "English"
  },

  {
  title: "Divebombs at Plenty Gorge",
  start_location: "Plenty Gorge",
  description: "Let me show you one of Melbournes best kept secrets.  Its a bit of a trek from the city, but I promise you its worth it.  Bring your bathers, get ready to get close and personal with some kangaroos, but don't worry; I'm not a serial killer!",
  user: win,
  category: "Adventure",
  language: "English"
  },
  {
  title: "Trigger-Happy Melbourne",
  start_location: "Hoddle Street",
  description: "Walk in the footsteps of notorious criminals as we take you on this tour of Melbourne's seedy underbelly.",
  user: alex,
  category: "Crime",
  language: "English"
  }
]

  # {
  # title: "Ghost Tour",
  # start_location: "Melbourne Gaol",
  # description: "Not for the faint hearted! Try this unique tour to find out more about Melbourne's famous haunted locations.",
  # user: User.last,
  # category: "Supernatural",
  # language: "English"
  # }
  # ,
  # {
  # title: "Cycling Sydney",
  # start_location: "Perth",
  # description: "Go on mountain bike trail through the parks of Perth to discover the habitat of kangaroos and wilderbeasts.",
  # user: User.first,
  # category: "Sightseeing",
  # language: "English"
  # },
  # {
  # title: "Tuk Tuk racing",
  # start_location: "Bangkok",
  # description: "Jump on a tuk tuk and follow our audio tour through the famous busy streets of Bangkok.",
  # user: User.first,
  # category: "Adventure",
  # language: "English"
  # },
  # {
  # title: "Je t'aime Hanoi!",
  # start_location: "Hanoi",
  # description: "A historical take on the beautiful city of Hanoi, from a frenchman's perspective.",
  # user: User.first,
  # category: "Adventure",
  # language: "French"
  # },
  # {
  # title: "Penang Foodies Tour",
  # start_location: "Penang",
  # description: "Follow an audio tour food trail from a local's perspective. Find hidden gems of the city of Penang well-kept from the average tourist.",
  # user: User.first,
  # category: "Food",
  # language: "English"
  # },
  # {
  # title: "Hidden Melbourne cafes",
  # start_location: "Melbourne",
  # description: "Go on an audio tour where we will show you how to find the hidden cafe gems in Melbourne city.",
  # user: User.first,
  # category: "Food",
  # language: "English"
  # }


Tour.create!(tours_array)





tours = Tour.all
puts "Many awesome tours added to your database!"


tour_hash = {
  "Classic Melbourne"=> {
    track_titles: [
      'Melbourne',
      'Federation square',
      'Melbourne State Library',
      'Melbourne Central',
      'Flinders Lane',
      'Melbourne Gaol'
    ],
    track_locations: [
      'Melbourne',
      'Federation square',
      'Melbourne State Library',
      'Melbourne Central',
      'Flinders Lane',
      'Melbourne Gaol'
    ],
    track_urls: [
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Melbourne_central_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Flinders_lane_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Melbourne_gaol.3gp'
    ],
    photo_urls: [
      "https://images.unsplash.com/photo-1514395462725-fb4566210144?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80",
      'https://images.unsplash.com/photo-1507643250627-92f01017dc00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1537153424912-32a41eb74844?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1482625974755-1fccd66c1ceb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1539853348006-c904c1275759?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      'https://www.oldmelbournegaol.com.au/wp-content/uploads/OMG_site_goal.jpg'
    ]
  },
  "Instagram Influencers Walk" => {
    track_titles: ["St Kilda Beach",
  "Brighton Beach Bathing Boxes",
  "Willy Beach (Williamstown)"],
    track_locations: ["St Kilda Beach, Melbourne",
  'Brighton Beach, Melbourne',
  'Willy Beach (Williamstown)'
  ],
    track_urls: [
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp'
    ],
    photo_urls: [
      'https://slack-imgs.com/?c=1&o1=wi720.he522.si.ro&url=https%3A%2F%2Fwearetravelgirls.com%2Fwp-content%2Fuploads%2F2018%2F03%2FBronte-Beach-Pool-Sunrise-1080x785.jpg',
      'https://images.unsplash.com/photo-1528163308254-5852067f0a1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1498393533405-8dd2ddbf6db4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'
    ]
  },
  "Melbourne Foodies Tour (Not Just Coffee)" => {
    track_titles: ["Gami Fried Chicken", "Queen Victoria Market","D.O.C. Pizzeria"],
    track_locations: ['Gami Chicken and Beer','Queen Victoria Market','DOC Pizzeria'],
    track_urls: [
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp'
    ],
    photo_urls: [
      'https://images.unsplash.com/photo-1549759594-0d842f402b4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
      'https://images.unsplash.com/photo-1514513255262-76c2200e709e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1534649643822-e7431de08af6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
    ]
  },
  "How I Met My Sheila" =>{
    track_titles: ["Carlton Gardens","Rooftop Bar, Curtin House","Melbourne Star Observation Wheel"],
    track_locations: ["Carlton Gardens, Melbourne",'Rooftop Bar, Curtin House, Melbourne','Melbourne Star Observation Wheel, Docklands, Melbourne'],
    track_urls: [
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp'],
    photo_urls: [
        'https://www.landscapeconference.com/wp-content/uploads/2017/08/Royal-Exhibition-Buildings-Carlton.jpg',
        'https://media.timeout.com/images/104097310/630/472/image.jpg',
        'https://www.visitmelbourne.com/-/media/atdw/melbourne/things-to-do/family/original__9522056_ci26__jy_0578_pr_wf0u348_2048x1152.jpg?ts=20190213360304'
      ]
  },
  "Memory Lane" => {
    track_titles: ['Melbourne','Melbourne State Library','Melbourne Central'],
    track_locations: ['Melbourne','Old Melbourne Gaol','Melbourne Central'],
    track_urls: [
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp'
    ],
    photo_urls: [
      'https://images.unsplash.com/photo-1494236472818-d35e50e604cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1542940018-8768f81865f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
      'https://images.unsplash.com/photo-1487653557405-97ba52327f93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80'
    ]
  },
  "Mystery of the Missing Mace" => {
    track_titles: [
      'Parliament House of Victoria',
      'St Patricks Cathedral',
      'Flagstaff Gardens'
    ],
    track_locations: [
      'Melbourne',
      'St Patricks Cathedral',
      'Flagstaff Gardens'
    ],
    track_urls: [
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp'
    ],
    photo_urls: [
      'https://junkee.com/wp-content/uploads/2018/04/mace-feature-3.png',
      'https://junkee.com/wp-content/uploads/2018/04/mace_wide_2.png',
      'https://www.weekendnotes.com/im/009/03/flagstaff-flagstaff-gardens-flagstaff-gardens-melb.jpg'
    ]
  },
  "A Melbourne Love Affair" => {
    track_titles: [
      'Carlton',
      'Fitzroy',
      'Richmond'
    ],
    track_locations: [
      'Carlton',
      'Fitzroy',
      'Richmond'
    ],
    track_urls: [
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552623284/Coffee_preview.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552623285/Coffee_track_one.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552623285/Coffee_track_2.3gp'
    ],
    photo_urls: [
      'https://static1.squarespace.com/static/5b61499d2714e5487b4a04ee/5b67a77870a6adef3b1bf085/5b68f0af0e2e729ed665f9f3/1533604021172/FITZROY+SWIMMING+POOL+%283%29.jpg?format=2500w',
      'https://media.timeout.com/images/104706932/1372/772/image.jpg',
      'https://rvamag.com/wp-content/uploads/2018/10/IMG_3269-1024x768.jpg'
    ]
  },

    "Ghost Tour" => {track_titles: ['Coburg','Pentridge','Footscray'],
      track_locations: ["Coburg", "Spooktown", "Boo Gotcha!"],
      track_urls: ['https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp'],
      photo_urls: ['https://images.unsplash.com/photo-1509557965875-b88c97052f0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
      'https://images.unsplash.com/photo-1509411273045-2920cee823be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1225&q=80',
      'https://images.unsplash.com/photo-1481018085669-2bc6e4f00eed?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'
    ]},



    "Richmond Locals" => {track_titles: ["Chapel Street", "Lygon Street", "Bell Street Maccas"],
    track_locations: ["Chapel Street", "Lygon Street", "Bell Street Maccas"],
    track_urls: ['https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp',
     ],
    photo_urls: ['https://images.unsplash.com/photo-1524069498954-2904a43d203f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1494&q=80',
      'https://images.unsplash.com/photo-1509557965875-b88c97052f0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
      'https://images.unsplash.com/photo-1509411273045-2920cee823be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1225&q=80'
    ]},



    "Divebombs at Plenty Gorge" => {
    track_titles: ['Yellow Gum Park','The Gorge', 'Divebombs'],
    track_locations: ['Yello Gum Park', 'The Gorge', 'Divebombs'],
    track_urls: ['https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
      'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp',
     ],
      photo_urls: ['https://images.unsplash.com/photo-1526515579900-98518e7862cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1341&q=80',
        'https://4.bp.blogspot.com/-2Zd8mhdgDgg/WxILJmZ9UQI/AAAAAAAAUTk/6hjnbpQ-ATEOC70roRx2u3CLJg-VnxbIgCLcBGAs/s640/DSC_0054.JPG',
      'https://1.bp.blogspot.com/-Mu8h4D3cPk8/WxIKsaazYTI/AAAAAAAAUS0/SwLp8_YYlpkpGMnde-hlMeBKUF574KakACLcBGAs/s640/DSC_0003.JPG'
    ]},

    "Trigger-Happy Melbourne" => { track_titles: ["Hoddle Street", "King Street", "Century Building"],
    track_locations: ["Hoddle Street", "King Street", "Century Building"],
    track_urls: ['https://res.cloudinary.com/dm25xqrrj/video/upload/v1552623285/Crims.3gp',
    'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
    'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp'],
    photo_urls: ['https://cdn.newsapi.com.au/image/v1/f17ff4cf317a5be3787ab7b611c406d9?width=1024',
    'https://shawglobalnews.files.wordpress.com/2018/12/King-Street-West-shooting.jpg?quality=70&strip=all&w=720&h=379&crop=1',
    'http://www.thecollectormm.com.au/private/CollinsCentral2.jpg'
    ]}
}





puts "Awesome audio tracks added to the tours!"


tours.each do |tour|
  counter = 0
  tour_track_titles = tour_hash[tour.title][:track_titles]
  tour_track_titles.each do |track_title|
    if counter != tour_track_titles.length
      track = Track.create(title: track_title, location: tour_hash[tour.title][:track_locations][counter], tour: tour )
      track.remote_audio_url = tour_hash[tour.title][:track_urls][counter]
      track.remote_photo_url = tour_hash[tour.title][:photo_urls][counter]
      track.save!
      counter += 1
    end
  end
end



puts "Adding awesome photos to tours!"

tours.each do |tour|
  photo = Photo.new
  photo.remote_photo_url = tour_hash[tour.title][:photo_urls][0]
  photo.tour = tour
  photo.save
end


### Update Latitudes and longitudes

tours_lat_lng_hash = {
  "Instagram Influencers Walk" =>  [-45.909490, 170.503767],
   "Melbourne Foodies Tour (Not Just Coffee)" => [-37.807579, 144.956787],
   "How I Met My Sheila" => [-37.800770, 144.967210],
   "Memory Lane" =>  [-45.909490, 170.503767],
   "Mystery of the Missing Mace" => [-37.811047, 144.973816],
   "A Melbourne Love Affair" => [-37.784336, 144.969742],
   "Ghost Tour" =>  [-37.737125, 144.967753],
   "Richmond Locals" => [-37.853890, 144.992713],
   "Divebombs at Plenty Gorge" => [-37.669173, 145.092478],
   "Trigger-Happy Melbourne" => [-37.802710, 144.992420]
}

tracks_lat_lng_hash = {
  "Instagram Influencers Walk" => [[-37.866595, 144.972847], [-37.917596, 144.986545], [-37.863983, 144.894501]],
  'Melbourne Foodies Tour (Not Just Coffee)' => [[-37.819642, 144.957436], [-37.807579, 144.956787], [-37.801167, 144.968491]],
  "How I Met My Sheila" => [[-37.800770, 144.967210], [-37.812783, 144.963222], [-37.811340, 144.937220]],
  "Memory Lane" => [[-37.807529, 144.960912], [-37.807705, 144.965242], [-37.810397, 144.962483]],
  "Mystery of the Missing Mace" => [[-37.811047, 144.973816], [-37.810054, 144.976234], [-37.580900, 144.104730]],
  "A Melbourne Love Affair" => [[-37.784336, 144.969742], [-37.796949, 144.979508], [-37.825148, 144.994412]],
  "Ghost Tour" => [[-37.737125, 144.967753], [-37.594290, 144.729110], [-37.580900, 144.104730]],
  "Richmond Locals" => [[-37.853890, 144.992713], [-37.810054, 144.976234], [-37.825148, 144.994412]],
  "Divebombs at Plenty Gorge" => [[-37.669173, 145.092478], [-37.670243, 145.088390], [-37.669114, 145.085729]],
  "Trigger-Happy Melbourne" => [[-37.802710, 144.992420], [-37.816460, 144.955710], [-37.600550, 144.897380]]
}

tours_lat_lng_hash.keys.each do |tour_title|
  t = Tour.find_by(title: tour_title)
  # print t.title
  t.latitude = tours_lat_lng_hash[tour_title][0]
  t.longitude = tours_lat_lng_hash[tour_title][1]
  counter = 0
  t.tracks.each do |track|
    track.latitude = tracks_lat_lng_hash[tour_title][counter][0]
    track.longitude = tracks_lat_lng_hash[tour_title][counter][1]
    counter += 1
  end
  t.save
end

