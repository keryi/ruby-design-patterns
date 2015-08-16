require_relative 'make_batter_task'

make_batter = MakeBatterTask.new
puts "#{make_batter.name} need #{make_batter.get_time_required} mins"
