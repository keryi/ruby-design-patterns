class ArrayIterator
  def initialize(ary)
    @ary = ary
    @index = 0
  end

  def has_next?
    @index < @ary.length
  end

  def item
    @ary[@index]
  end

  def next_item
    value = @ary[@index]
    @index += 1
    value
  end
end
