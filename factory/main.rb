require_relative 'frog_pond'
require_relative 'duck_pond'

puts 'One day with the frogs'
pond = FrogPond.new 3
pond.simulate_one_day
puts
puts
puts 'One day with the duck'
pond = DuckPond.new 3
pond.simulate_one_day
