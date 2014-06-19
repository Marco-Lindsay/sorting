class Array
  def radix_sort
    array_copy = self
    amount_of_passes = [max, min.abs].max.to_s.length
    amount_of_passes.times do |i|
      buckets = []    
      20.times {buckets << []}
      base = 10**i
      array_copy.each do |n|
        bucket_value = n / base
        bucket_index = bucket_value % 10
        bucket_index += 10 if n >= 0
        buckets[bucket_index] << n
      end
      array_copy = buckets.flatten
    end
    array_copy
  end
end
