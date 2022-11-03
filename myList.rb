require './myEnumerable.rb'

class MyList
  def initialize(*list)
    @list = list
  end 

  include MyEnumerable

  def each
   @list.each { |i| yield i }
  end
end
