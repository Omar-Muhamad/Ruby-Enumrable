module MyEnumerable
  def all?
    @list.each { |item| return p false unless yield item }
    p true
  end

  def any?
    @list.each { |item| return p true if yield item }
    p false
  end

  def filter
    arr = []
    @list.each { |item| arr << item if yield item }
    p arr
  end
end
