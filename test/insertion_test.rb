require "test_helper"
require "insertion"
require "benchmark"

describe "Insertion tests"  do
  before do
    @bad  = [9, 8, 7, 6, 5, 4, 3, 2, 1]
    @sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @random = [1, 5, 2, 8, 3, 9, 7, 4, 6]
    @short  = [1]
    @best   = (1..10000).to_a
    @worst  = @best.reverse
    @rand   = (1..10000).to_a.shuffle
  end

  it "insertion random case" do
    array = Insertion.insert_sort(@random)
    assert_equal @sorted, array
  end

  def test_benchmarks_insertion
    puts 'best'
    puts Benchmark.measure{Insertion.insert_sort(@best)}
    puts 'worst'
    puts Benchmark.measure{Insertion.insert_sort(@worst)}
    puts 'random'
    puts Benchmark.measure{Insertion.insert_sort(@rand)}
  end
end
