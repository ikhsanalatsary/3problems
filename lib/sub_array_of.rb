def sub_array_of?(arr_a, arr_b)
  # (arr_a & arr_b).sort == arr_b.sort
  intersect = []
  arr_b.each do |num|
    intersect << num if arr_a.include? num
  end
  intersect == arr_b
end
