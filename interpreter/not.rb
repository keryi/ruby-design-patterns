require_relative 'all'

class Not < Expression
  def initialize(expr)
    @expr = expr
  end

  def evaluate(dir)
    All.new.evaluate(dir) - @expr.evaluate(dir)
  end
end
