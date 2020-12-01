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

def bubble_sort_by(arr)
  run = arr.length - 2
  arr.each do
    arr.each_with_index do |_, index|
      next if arr[index + 1].nil? == true

      next if arr[index].length < arr[index + 1].length

      temp = arr[index]
      arr[index] = arr[index + 1]
      arr[index + 1] = temp
    end
    run -= 1
  end
  #arr
  yield
end

test_block = %w[hi hello hey]
test_arr = [4, 3, 78, 2, 0, 2]

complete = bubble_sort(test_arr)
print complete

bubble_sort_by(test_block) { puts test_block }
