# Partition function to rearrange the array around a pivot
partition <- function(arr, low, high) {
  pivot <- arr[high]  # Choose the last element as pivot
  i <- low - 1        # Index of smaller element
  
  for (j in low:(high - 1)) {
    if (arr[j] <= pivot) {
      i <- i + 1
      # Swap elements around pivot
      temp <- arr[i]
      arr[i] <- arr[j]
      arr[j] <- temp
    }
  }
  # Place pivot element in the correct position
  temp <- arr[i + 1]
  arr[i + 1] <- arr[high]
  arr[high] <- temp
  return(i + 1)
}

# Quick Sort function using recursion
quick_sort <- function(arr, low, high) {
  if (low < high) {
    pivot_index <- partition(arr, low, high)
    
    # Recursively sort elements before and after partition
    arr <- quick_sort(arr, low, pivot_index - 1)
    arr <- quick_sort(arr, pivot_index + 1, high)
  }
  return(arr)
}

# Example usage
array <- c(10, 7, 8, 9, 1, 5)
cat("Unsorted array:", array, "\n")
sorted_array <- quick_sort(array, 1, length(array))
cat("Sorted array:", sorted_array, "\n")
