class Pond
  def initialize(animal_count)
    @animals = []
    animal_count.times do |i|
      @animals << new_animal("Animal #{i}")
    end
  end

  def simulate_one_day
    [:speak, :eat, :sleep].each do |act|
      @animals.each { |animal| animal.send(act) }
    end
  end
end
