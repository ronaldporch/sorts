require "spec_helper"
require 'radix'

describe "radix_sort" do
  before do
    @m = RadixSort.new
    @a = (1..1000).to_a
    @a2 = (1..1000_000).to_a
  end
  it "should sort random values using radix_sort" do
    @m.radixsort(@a.shuffle).must_equal(@a)
  end

    it "should sort larger set of random values using radix_sort" do
    @m.radixsort(@a2.shuffle).must_equal(@a2)
  end
end
