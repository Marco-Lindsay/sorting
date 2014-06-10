require "test_helper"
require "insertion"
require "merge"
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

  it "insertion worst case" do
    array = Insertion.insert_sort(@random)
    assert_equal @sorted, array
  end

  it "merge returns itself if less than one" do
    # binding.pry
    assert_equal @short, @short.merge_sort
  end

  it "merge test " do
    assert_equal @sorted, @random.merge_sort
  end

  def test_benchmark
    puts 'best'
    puts Benchmark.measure{@best.merge_sort}
    puts 'worst'
    puts Benchmark.measure{@worst.merge_sort}
    puts 'random'
    puts Benchmark.measure{@rand.merge_sort}
  end
end
