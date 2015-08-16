require_relative 'task'
require_relative 'add_dry_ingredient_task'
require_relative 'mix_task'

class MakeBatterTask < Task
  def initialize
    super 'Make Batter'
    @sub_tasks = []
    add_sub_task AddDryIngredientTask.new
    add_sub_task MixTask.new
  end

  def add_sub_task(task)
    @sub_tasks << task
  end

  def remove_sub_task(task)
    @sub_tasks.delete task
  end

  def get_time_required
    @sub_tasks.map(&:get_time_required).inject(:+)
  end
end
