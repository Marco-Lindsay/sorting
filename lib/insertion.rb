require 'pry'
require 'pry-nav'

class Insertion

  def self.insert_sort(array)
    return array if array.length < 2

    (1...array.length).each do |num|
      insert_index = num
      while insert_index > 0 && (array[insert_index-1] > array[insert_index]) do
        array[insert_index], array[insert_index - 1] = array[insert_index -1], array[insert_index]
        insert_index -= 1
      end
    end
    array
  end
end
