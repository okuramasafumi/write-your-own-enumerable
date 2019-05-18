module Enumerable
  def count(*values, &block)
    raise StandardError if values.length > 1
    item = values.first unless values.empty?

    ret = 0
    self.each do |n|
      ret += 1 if (values.empty? && !block_given?) || block_given? && yield(n) || !values.empty? && item == n
    end
    ret
  end
end

class Array
  def count(*values, &block)
    raise StandardError if values.length > 1
    item = values.first unless values.empty?

    ret = 0
    self.each do |n|
      ret += 1 if (values.empty? && !block_given?) || block_given? && yield(n) || !values.empty? && item == n
    end
    ret
  end
end