require_relative 'pond'
require_relative 'duck'
require_relative 'waterlily'

class DuckWaterlilyPond < Pond
  def new_organism(type, name)
    case type
    when :animal then Duck.new(name)
    when :plant then WaterLily.new(name)
    else raise "Unknown organism type: #{type}"
    end
  end
end
