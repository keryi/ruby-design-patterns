require_relative 'make_batter_task'

make_batter = MakeBatterTask.new
puts "#{make_batter.name} need #{make_batter.get_time_required} mins"

make_cake = CompositeTask.new 'Make cake'
make_cake << MixTask.new
puts "#{make_cake.name} need #{make_cake.get_time_required} mins"
