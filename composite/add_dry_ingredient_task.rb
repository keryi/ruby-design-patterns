require_relative 'task'

class AddDryIngredientTask < Task
  def initialize
    super 'Add dry ingredients'
  end

  def get_time_required
    1.0
  end
end
