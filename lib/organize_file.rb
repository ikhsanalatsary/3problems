def organize_file(log_files)
  dic = {}
  temp = []
  result = []
  sorted = log_files.sort_by { |x| x[3] }
  sorted.map do |log_file|
    log_file.each_with_index do |file, index|
      if index == 1
        if dic[file]
          seq = dic[file].length
          count = (seq + 1).to_s
          suffix = format('%02d', count)
          filename = file + suffix
        else
          count = index.to_s
          suffix = format('%02d', count)
          filename = file + suffix
          dic[file] = []
        end
        dic[file] << filename
        temp[0] = filename
      end
      if index.zero?
        ext = file[-4, file.size]
        temp[1] = ext
      end
      result = temp.join('')
    end
    result
  end
end
