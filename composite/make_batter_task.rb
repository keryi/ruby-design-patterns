require_relative 'composite_task'
require_relative 'add_dry_ingredient_task'
require_relative 'mix_task'

class MakeBatterTask < CompositeTask
  def initialize
    super 'Make Batter'
    @sub_tasks = []
    add_sub_task AddDryIngredientTask.new
    add_sub_task MixTask.new
  end
end
