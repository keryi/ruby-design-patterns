require_relative 'duck'
require_relative 'waterlily'
require_relative 'pond'

puts 'One day with the duck and waterlily'
pond = Pond.new 3, Duck, 2, WaterLily
pond.simulate_one_day
