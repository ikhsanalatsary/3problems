require './lib/sum_fibobnacci_prime'

# Buat sebuah fungsi untuk menjumlahkan bilangan fibonacci prima dengan parameter
# maximum fibonacci number, contoh input :
# INPUT :
# sumFibonanciPrime(20);
# OUTPUT: 25
describe '#sum_fibobnacci_prime' do
  it 'returns 23 when passed 20' do
    # expect(sum_fibobnacci_prime(20)).to equal(25)
    expect(sum_fibobnacci_prime(20)).to equal(23)
  end
end
