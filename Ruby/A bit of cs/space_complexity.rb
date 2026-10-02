# What is space complexity

# input space
# Auxillary space

# Measuring Space complexity

 # Example
 def sum_arr(arr)
  copy_arr = arr.dup
  sum = 0
  copy_arr.each do |number|
    sum += number
  end
  return sum
end

# common Big notations

O(1) 

O(N) 

O(N²), O(N³) 

O(log N) 

O(N!) or O(2ⁿ) 

# Auxiliary space analysis

def square_nums_in_place(arr)
  0.upto(arr.length) do |idx|
    arr[idx] = arr[idx] * arr[idx]
  end
  return arr
end

def square_nums_new_arr(arr)
  arr.map { |number| number * number }
end
