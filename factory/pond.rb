class Pond
  def initialize(animal_count, plant_count)
    @animals = []
    @plants = []
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
end
