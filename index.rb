def bubble_sort (arr)
    run=arr.length-2
    for j in 0..arr.length - 2
        for i in 0..run
            if (arr[i] > arr[i+1])
                temp = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = temp
            end
        end
        run -= 1
    end   
    return arr
end

def bubble_sort_by (arr)
    run=arr.length-2
    for j in 0..arr.length-2
        for i in 0..run
            if (arr[i].length > arr[i+1].length)
                temp = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = temp
            end
        end
        run -= 1
    end
    return arr
end

test_block = ["hi","hello","hey"]
test_arr = [4,3,78,2,0,2]

complete=bubble_sort(test_arr)
block=bubble_sort_by(test_block)

print complete
print block