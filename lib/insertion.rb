class Array
  def insertion_sort!
    first_bench = Time.now
    1.upto(length - 1) do |i|
      indexed_value = delete_at i
      tested_value = i - 1
      tested_value -= 1 while tested_value >= 0 && indexed_value < self[tested_value]
      insert(tested_value + 1, indexed_value)
    end
    second_bench = (Time.now - first_bench)
    puts "Benchmarked at #{second_bench.round(3)} seconds."
    self
  end
end
