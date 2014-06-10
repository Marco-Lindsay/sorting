require "test_helper"
require "insertion"


describe "Insertion tests"  do
  before do
    @worst = [9, 8, 7, 6, 5, 4, 3, 2, 1]
    @sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @random = [1, 5, 2, 8, 3, 9, 7, 4, 6]
  end

  it "insertion worst case" do
    array = Insertion.insert_sort(@random)
    assert_equal @sorted, array
  end
end
