def merge_sort(arr)
  return arr if arr.size <= 1
  arr2 = merge_sort(arr[0, arr.size / 2])
  arr3 = merge_sort(arr[arr.size / 2, arr.size])
  merge(arr2, arr3)
end

def merge(arr1, arr2)
  sorted = []
  while arr1.size > 0 && arr2.size > 0
    sorted << if arr1[0] <= arr2[0]
      arr1.shift
    else
      arr2.shift
    end
  end
  sorted.concat(arr1).concat(arr2)
end

print merge_sort((1..100).to_a.shuffle)

