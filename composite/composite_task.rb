require_relative 'task'

class CompositeTask < Task
  def initialize(name)
    super name
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
  end

  def remove_sub_task(task)
    @sub_tasks.delete task
  end

  def <<(task)
    @sub_tasks << task
  end

  def get_time_required
    @sub_tasks.map(&:get_time_required).inject(:+)
  end
end
