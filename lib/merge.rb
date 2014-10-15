class MergeSort

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
  end

  def merge_sort(array)
    if array.length <= 1
      array
    else
      left = []
      right = []
      middle = array.length / 2
      (0..middle-1).each do |n|
        left << array[n]
      end
      (middle..array.length-1).each do |n|
          right << array[n]
      end
      left = merge_sort(left)
      right = merge_sort(right)
      merge(left, right)
  end
  end
end

a = [44, 4, 1, 3, 2, 5, 9]
m = MergeSort.new
m.merge_sort(a)
