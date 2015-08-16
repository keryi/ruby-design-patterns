require_relative 'array_iterator'

ary = ['a', 'b', 'c']
ite = ArrayIterator.new ary
puts ite.next_item while ite.has_next?

