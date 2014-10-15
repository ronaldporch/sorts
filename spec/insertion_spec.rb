require "spec_helper"
require "insertion"

describe Array do
    before do
    @a = (1..10000).to_a
  end
  it "should sort random values" do
    @a.shuffle.insertion_sort!.must_equal @a
  end

  it "should quickly sort already sorted values" do
    @a.insertion_sort!.must_equal @a
  end
end
