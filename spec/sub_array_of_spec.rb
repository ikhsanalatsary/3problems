require './lib/sub_array_of'

# Terdapat dua array A[] dan B[] berisi angka integer. Buatlah fungsi untuk
# melakukan check apakah array B adalah subarray dari array A!
context 'when passed "A = [1, 2, 0, 5, 8, 1, 3] and B = [3, 0, 5, 1]"' do
  let(:array_A) { [1, 2, 0, 5, 8, 1, 3] }
  let(:array_B) { [3, 0, 5, 1] }

  describe '#sub_array_of?' do
    it 'returns true' do
      expect(sub_array_of?(array_A, array_B)).to be(true)
    end
  end
end

context 'when passed "A = [1, 2, 0, 5, 8, 1, 3] and B = [3, 0, 5, 1, 7]"' do
  let(:array_A) { [1, 2, 0, 5, 8, 1, 3] }
  let(:array_B) { [3, 0, 5, 1, 7] }

  describe '#sub_array_of?' do
    it 'returns false' do
      expect(sub_array_of?(array_A, array_B)).to be(false)
    end
  end
end
