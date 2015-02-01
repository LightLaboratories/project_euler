def sort(array)
  return array if array.size <= 1
  mid = array.size/2
  left = array[0, mid]
  right = array[mid, array.size]
  merge(sort(left), sort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? or right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end


array = [1, 54, 12, 393, 23, 65, 22, 11, 76, 543]
p sort(array)
