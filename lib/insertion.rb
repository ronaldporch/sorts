class Array
  def insertion_sort!
    first_bench = Time.now
    1.upto(length - 1) do |i|
      indexed_value = delete_at i
      tested_value = i - 1
      tested_value -= 1 while tested_value >= 0 && indexed_value < self[tested_value]
      insert(tested_value + 1, indexed_value)
    end
    second_bench = (Time.now - first_bench) * 1000
    puts "Benchmarked at #{second_bench.round(5)} seconds."
    self
  end
end

test = [1, 6, 2, 9, 88, 5, 24, 66, 8]
p test.insertion_sort!
test2 = [9, 8, 7, 6, 5, 4, 3, 2, 1]
p test2.insertion_sort!
