require './maximum_subarray'
describe MaximumSubarray do
  before do
  end

  describe 'MaximumSubarray.solve' do
    it 'solves' do
      expect(MaximumSubarray.solve([1, 2, 3])).to eq(6)
      expect(MaximumSubarray.solve([1, 2, -1])).to eq(3)
      expect(MaximumSubarray.solve([1, 2, -1, -10, 100])).to eq(100)
      expect(MaximumSubarray.solve([100, 2, -1, -10, 100])).to eq(191)
    end
  end

end
