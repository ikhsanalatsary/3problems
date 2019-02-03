function subArrayOf(arr1: number[], arr2: number[]) {
  let intersect = arr1
    .filter((value, index, array) => -1 !== arr2.indexOf(value) && array.indexOf(value) === index)
  return intersect.length === arr2.length
}

export default subArrayOf
