require "spec_helper"
require 'quicksort'

describe "quicksort" do
  before do
    @m = QuickSort.new
    @a = (1..1000).to_a
  end
  it "should sort random values using merge_sort" do
    @m.quicksort(@a.reverse).must_equal(@a)
  end

    it "should sort sorted values using merge_sort" do
    @m.quicksort(@a.shuffle).must_equal(@a)
  end
end
