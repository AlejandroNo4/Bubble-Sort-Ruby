def bubble_sort(arr)
  run = arr.length - 2
  arr.each do
    arr.each_with_index do |_, index|
      next if arr[index + 1].nil? == true

      next if arr[index] < arr[index + 1]

      temp = arr[index]
      arr[index] = arr[index + 1]
      arr[index + 1] = temp
    end
    run -= 1
  end
  arr
end

test_arr = [4, 3, 78, 2, 0, 2]
n = bubble_sort(test_arr)
puts n

def bubble_sort_by(arr)
  run = arr.length - 2
  arr.each do
    arr.each_with_index do |_, index|
      next if arr[index + 1].nil? == true

      next if yield(arr[index], arr[index + 1]).negative?

      temp = arr[index]
      arr[index] = arr[index + 1]
      arr[index + 1] = temp
    end
    run -= 1
  end
  arr
end

test_block = %w[hi hello hey]
a = bubble_sort_by(test_block) do |left, right|
  left.length - right.length
end
puts a
