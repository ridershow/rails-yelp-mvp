puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '06 27 67 96 27',
    category:    'french'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '06 27 67 67 27',
    category:    'italian'
  },
  {
    name:         'Pizza Crust',
    address:      'Berawa, Bali',
    phone_number: '06 27 67 56 27',
    category:    'italian'
  },
  {
    name:         'Canteen',
    address:      'Batu bolong, Bali',
    phone_number: '06 00 67 56 27',
    category:    'chinese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
