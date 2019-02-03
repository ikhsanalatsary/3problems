import subArrayOf from '../lib/subArrayOf';

let arrayA = [1, 2, 0, 5, 8, 1, 3]
let arrayB = [3, 0, 5, 1]
test('returns true', () => {
  expect(subArrayOf(arrayA, arrayB)).toBe(true)
})
test('returns false', () => {
  expect(subArrayOf(arrayA, [3, 0, 5, 1, 7])).toBe(false)
})
