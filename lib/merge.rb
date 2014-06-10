class Array

  def merge_sort
    return self if self.length == 1
    left, right = self.each_slice((self.size/2.0).round).to_a
    return merge(left.merge_sort, right.merge_sort)
  end

  private

  def merge(left, right)
    array = []
    until left.empty? || right.empty?
      if left[0] < right[0]
        array << left.shift
      else
        array << right.shift
      end
    end
    array + right + left
  end

end
