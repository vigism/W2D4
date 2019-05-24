
#WINDOWED MAX RANGE

#O(n^2)
def naive_max_windowed_range(arr, w)
  curr = 0

  arr.each_with_index do |el, idx|
    
    sliced = w + idx
    window = arr[idx...sliced]
    min = window.min
    max = window.max
    range = max - min
    if curr < range
      curr = range
    end
  end
  curr
end