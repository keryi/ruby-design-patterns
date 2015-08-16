require_relative 'task'

class MixTask < Task
  def initialize
    super 'Mix Tasks'
  end

  def get_time_required
    3.0
  end
end
