def bubble_sort (arr)
    for j in 0..arr.length - 2
        for i in 0..arr.length - 2
            if (arr[i] > arr[i+1])
                temp = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = temp
            end
        end
    end   
    return arr
end              

#test_arr = [2, 5, 8, 1, 3, 9, 10, 4, 7, 6]
test_arr = [4,3,78,2,0,2]
complete=bubble_sort(test_arr)
print complete