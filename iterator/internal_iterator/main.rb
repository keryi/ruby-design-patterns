def for_each_element(ary)
  i = 0
  while i < ary.length
    yield ary[i]
    i += 1
  end
end

for_each_element([1, 2, 3, 4, 5]) { |a| puts a }
