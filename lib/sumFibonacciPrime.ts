function sumFibonacciPrime(max: number): number {
  let totalPrime = 0
  for (let sequence = 1; sequence < max; sequence++) {
    let fiboNum = getFibonacci(sequence)
    if (fiboNum <= max && isPrime(fiboNum)) totalPrime += fiboNum
  }
  return totalPrime
}

function getFibonacci(seq: number): number {
  return Number((goldenRatio1(seq) - goldenRatio2(seq)) / Math.sqrt(5))
}

function goldenRatio1(seq: number): number {
  return Math.pow((1 + Math.sqrt(5.0)) / 2.0, seq)
}

function goldenRatio2(seq: number): number {
  return Math.pow((1 - Math.sqrt(5.0)) / 2.0, seq)
}

function isPrime(num: number) {
  if (num < 2 ) return false
  if (num === 2 || num === 3) return true
  if (num % 2 === 0 || num % 3 === 0 ) return false

  let i = 5
  let s = 2
  while ((i * i) <= num) {
    if (num % i === 0) {
      return false
    }

    i += s
    s = 6 - s
  }

  return true
}

export default sumFibonacciPrime
