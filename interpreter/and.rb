class And < Expression
  def initialize(expr1, expr2)
    @expr1 = expr1
    @expr2 = expr2
  end

  def evaluate(dir)
    res1 = @expr1.evaluate(dir)
    res2 = @expr2.evaluate(dir)
    (res1 & res2)
  end
end
