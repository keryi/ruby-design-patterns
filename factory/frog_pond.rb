require_relative 'pond'
require_relative 'frog'

class FrogPond < Pond
  def new_animal(name)
    Frog.new(name)
  end
end
