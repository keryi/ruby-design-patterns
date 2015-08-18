class Pond
  def initialize(animal_count, animal_klass, plant_count, plant_klass)
    @animals = []
    @plants = []
    @animal_klass = animal_klass
    @plant_klass = plant_klass
    animal_count.times do |i|
      @animals << new_organism(:animal, "Animal #{i}")
    end

    plant_count.times do |i|
      @plants << new_organism(:plant, "Plant #{i}")
    end
  end

  def simulate_one_day
    [:speak, :eat, :sleep].each do |act|
      @animals.each { |animal| animal.send(act) }
    end
    @plants.each { |plant| plant.grow }
  end

  def new_organism(type, name)
    case type
    when :animal then @animal_klass.new(name)
    when :plant then @plant_klass.new(name)
    else raise "Unknown organism type: #{type}"
    end
  end
end
