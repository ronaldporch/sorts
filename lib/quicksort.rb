class QuickSort
  def quicksort(array)
    start_time = Time.now

    if array.length <= 1
      return array
    end

    pivot = array.delete_at -1
    less, greater = [], []

    index = 0
    (0..array.length - 1).each do |i|
        if array[i] <= pivot
          less << array[i]
        else
          greater << array[i]
      end
    end

    add(quicksort(less), pivot, quicksort(greater))
  end

  def add(less, pivot, greater)
    result = []
    result << less << pivot << greater
    result.flatten
  end

end

array = QuickSort.new
array.quicksort((1..10).to_a.shuffle)
