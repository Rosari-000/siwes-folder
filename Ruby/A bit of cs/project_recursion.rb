# iterative version

def fibs(n)
  sequence = [0, 1]
  (2...n).each do |i|
    sequence << sequence[i - 1] + sequence[i - 2]
  end
  sequence.take(n)
end

# Example:
p fibs(8)  # => [0, 1, 1, 2, 3, 5, 8, 13]


# Recursive version

def fibs_rec(n)
  puts 'This was printed recursively'
  return [0] if n == 1
  return [0, 1] if n == 2

  seq = fibs_rec(n - 1)
  seq << seq[-1] + seq[-2]
end

# Example:
p fibs_rec(8)  # => [0, 1, 1, 2, 3, 5, 8, 13]


# Merge sort
def merge_sort(array)
  return array if array.length <= 1  # Base case

  mid = array.length / 2
  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..-1])

  merge(left, right)
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted + left + right
end

# Examples:
p merge_sort([])                     # => []
p merge_sort([73])                   # => [73]
p merge_sort([1, 2, 3, 4, 5])        # => [1, 2, 3, 4, 5]
p merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) # => [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110])    # => [79, 100, 105, 110]
