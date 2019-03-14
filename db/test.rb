tours_array = [
  {
  title: "Memory Lane",
  start_location: "Flinders Street, Melbourne",
  description: "From Batman to bushfires, lets go on a trip down memory lane, or AC/DC lane to find out what shaped Marvelous Melbourne into the hipster capital of Australia.  So grab your latte, hop on your fixie, and prepare to be, like, totally stoked man.",
  user: User.last,
  category: "History",
  language: "English"
  },
  {
  title: "Mystery of the Missing Mace",
  start_location: "Parliament House of Victoria",
  description: "In 1891, Melbourne’s sewers caught fire, the city flooded, a pair of legs turned up in the street, and a plague of locusts arrived. In the midst of all this, a precious medieval weapon was stolen from Victorian Parliament, sparking one of the greatest unsolved mysteries in Australian history.  With a $50,000 reward still up for grabs, come with me on this wild ride through Marvelous Melbourne's sordid past and lets try and solve the mystery of the missing mace.",
  user: User.last,
  category: "Crime",
  language: "English"
  },
  {
  title: "A Melbourne Love Affair",
  start_location: "Lygon St, Carlton",
  description: "Tall, dark and full bodied, it was love at first whiff. Find out why Starbucks never stood a chance as we dissect Melbournes love of the espresso machine and explore some of this cities hidden gems.  Dont forget to bring an appetite, and at least $4.50",
  user: User.last,
  category: "Romance",
  language: "English"
  }]


tour_hash = { "Memory Lane" => {track_titles: ['Melbourne',
  'Melbourne State Library',
  'Melbourne Central'],
   track_locations: ['Melbourne',
  'Old Melbourne Gaol',
  'Melbourne Central'],
  track_urls: ['https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp'],
  photo_urls: ['https://images.unsplash.com/photo-1514395462725-fb4566210144?ixlib=rb-1.2.1&auto=format&fit=crop&w=1651&q=80',
  'https://images.unsplash.com/photo-1542940018-8768f81865f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  'https://images.unsplash.com/photo-1487653557405-97ba52327f93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80'
]},
{ "Mystery of the Missing Mace"=> {track_titles: ['Parliament House of Victoria',
  'St Patricks Cathedral'
   ],
track_locations: ['Melbourne',
  'St Patricks Cathedral',
],
audio_urls: ['https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp',
 ],
photo_urls: ['https://junkee.com/wp-content/uploads/2018/04/mace-feature-3.png',
  'https://junkee.com/wp-content/uploads/2018/04/mace_wide_2.png'
]},



{ "Memory Lane" => {
track_titles: ['Carlton',
  'Fitzroy',
  'Richmond'
   ],
track_locations: ['Carlton',
  'Fitzroy',
  'Richmond'
],
audio_urls: ['https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/Preview_take_6.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016860/Sample%20audio%20tracks/Federation_square_take_1.3gp',
  'https://res.cloudinary.com/dm25xqrrj/video/upload/v1552016859/Sample%20audio%20tracks/State_library_victoria_take_1.3gp',
 ],
  photo_urls: ['https://static1.squarespace.com/static/5b61499d2714e5487b4a04ee/5b67a77870a6adef3b1bf085/5b68f0af0e2e729ed665f9f3/1533604021172/FITZROY+SWIMMING+POOL+%283%29.jpg?format=2500w',
  'https://images.unsplash.com/photo-1494234529886-a695930724b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  'https://rvamag.com/wp-content/uploads/2018/10/IMG_3269-1024x768.jpg'
]}
