function organizeFile(logFiles: string[][]) {
  let memo: { [key: string]: string[] } = {}
  let temp: string[] = []
  let newFilename = ''
  let result = logFiles.sort(function (a, b) {
    if (a[2] === b[2]) {
      return 0
    }
    return (a[2] < b[2]) ? -1 : 1
  })
  .map(function (logFile) {
    logFile.forEach(function(file, index) {
      let filename;
      switch (index) {
        case 0:
          let ext = file.slice(-4, file.length)
          temp[1] = ext
        break;
        case 1:
          if (memo[file]) {
            let seq = memo[file].length
            let count = (seq + 1).toString()
            let suffix = Array(Math.max(3 - count.length, 0)).join('0') + count
            filename = file + suffix
          } else {
            let count = index.toString()
            let suffix = Array(Math.max(3 - count.length, 0)).join('0') + count
            filename = file + suffix
            memo[file] = []
          }
          memo[file].push(filename)
          temp[0] = filename
        break;

        default:
          break;
      }
      newFilename = temp.join('')
    });
    return newFilename
  })
  return result
}

export default organizeFile
