require_relative 'tiger'
require_relative 'jungle'
require_relative 'species'

tiger = Tiger.new 'Siberian'
jungle = Jungle.new 'The Amazon'

jungle.add_sub_population tiger

puts "#{tiger.name}'s parent population is #{tiger.parent_population.name}"

species = Species.new 'P. Tigris'
species.add_sub_classification tiger

puts "#{tiger.name}'s parent classification is #{tiger.parent_classification.name}"
