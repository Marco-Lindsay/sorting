require "test_helper"
require "insertion"
require "merge"
require "quick"
require "radix"
require "benchmark"

describe "Insertion tests"  do
  before do
    @bad    = [9, 8, 7, 6, 5, 4, 3, 2, 1]
    @sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @random = [1, 5, 2, 8, 3, 9, 7, 4, 6,]
    @radix  = [1, 5, 2, 8, 600, 3, 9, 7, 4, 6, -15]
    @radix_sorted = [-15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 600]
    @short  = [1]
    @best   = (1..10000).to_a
    @worst  = @best.reverse
    @rand   = (1..10000).to_a.shuffle
  end

  it "insertion sort test" do
    array = Insertion.insert_sort(@random)
    assert_equal @sorted, array
  end

  it "merge returns itself if less than one" do
    assert_equal @short, @short.merge_sort
  end

  it "merge sort test " do
    assert_equal @sorted, @random.merge_sort
  end

  it "quick sort test" do
    assert_equal @sorted, @random.quick_sort
  end

  it "radix sort test" do
    assert_equal @radix_sorted, @radix.radix_sort
  end


  def test_benchmark
    puts 'Merge ---------------'
    puts 'merge best'
    puts Benchmark.measure{@best.merge_sort}
    puts 'merge worst'
    puts Benchmark.measure{@worst.merge_sort}
    puts 'merge random'
    puts Benchmark.measure{@rand.merge_sort}
  end

  def test_benchmark_quick
    puts 'Quick ---------------'
    puts 'quick best'
    puts Benchmark.measure{@best.quick_sort}
    puts 'quick worst'
    puts Benchmark.measure{@worst.quick_sort}
    puts 'quick random'
    puts Benchmark.measure{@rand.quick_sort}
  end

  def test_benchmark_radix
    puts 'Radix ---------------'
    puts 'radix best'
    puts Benchmark.measure{@best.radix_sort}
    puts 'radix worst'
    puts Benchmark.measure{@worst.radix_sort}
    puts 'radix random'
    puts Benchmark.measure{@rand.radix_sort}
  end

end