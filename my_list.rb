require './my_enumerable'

class MyList
  def initialize(*list)
    @list = list
  end

  include MyEnumerable

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
p(list.all? { |i| i < 5 })
# should returns true
p(list.all? { |i| i > 5 })
# should returns false

# Test #any?
p(list.any? { |i| i == 2 })
# should returns true
p(list.any? { |i| i == 5 })
# should returns false

# Test #filter
p(list.filter(&:even?))
# should returns [2, 4]
