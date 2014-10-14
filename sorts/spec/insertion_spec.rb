require "minitest/autorun"
require "minitest/spec"
require "insertion"

describe Array do
  it "should show keys" do
    [3, 2, 6, 4, 1].insertion_sort!.must_equal [1,2,3,4,6]
  end
end
