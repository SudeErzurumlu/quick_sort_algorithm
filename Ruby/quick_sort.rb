# Partition function to divide the array around a pivot
def partition(arr, low, high)
  pivot = arr[high]  # Choose the last element as the pivot
  i = low - 1        # Index of smaller element

  (low...high).each do |j|
    if arr[j] <= pivot
      i += 1
      arr[i], arr[j] = arr[j], arr[i]  # Swap elements around pivot
    end
  end
  arr[i + 1], arr[high] = arr[high], arr[i + 1]
  return i + 1
end

# Quick Sort function using recursion
def quick_sort(arr, low, high)
  if low < high
    pivot_index = partition(arr, low, high)

    # Recursively sort elements before and after partition
    quick_sort(arr, low, pivot_index - 1)
    quick_sort(arr, pivot_index + 1, high)
  end
end

# Example usage
array = [10, 7, 8, 9, 1, 5]
puts "Unsorted array: #{array.inspect}"
quick_sort(array, 0, array.length - 1)
puts "Sorted array: #{array.inspect}"
