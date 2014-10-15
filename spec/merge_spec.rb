require "spec_helper"
require 'merge'

describe "mergesort" do
  before do
    @m = MergeSort.new
    @a = (1..1000).to_a
  end
  it "should sort using merge_sort" do
    @m.merge_sort(@a.shuffle).must_equal(@a)
  end
end
