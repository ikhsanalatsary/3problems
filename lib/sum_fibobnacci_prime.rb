require 'prime'

def sum_fibobnacci_prime(max)
  total_prime = 0
  (1..max).each do |i|
    fibo_num = ((golden_ratio_1(i) - golden_ratio_2(i)) / Math.sqrt(5)).to_i
    fibo_num <= max && Prime.prime?(fibo_num) && total_prime += fibo_num
  end
  total_prime
end

def golden_ratio_1(seq)
  ((1 + Math.sqrt(5.0)) / 2.0)**seq
end

def golden_ratio_2(seq)
  ((1 - Math.sqrt(5.0)) / 2.0)**seq
end

# this code assumes 1 is prime number
def prime?(num)
  # return false if num < 2
  return true if [2, 3].include? num
  return false if (num % 2).zero? || (num % 3).zero?

  i = 5
  s = 2

  while (i * i) <= num
    return false if (num % i).zero?

    i += s
    s = 6 - s
  end
  true
end
