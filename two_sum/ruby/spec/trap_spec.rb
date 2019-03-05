require './two_sum'
describe TwoSum do
  before do
    @two_sum = TwoSum.new
  end

  describe 'get_peaks' do
    it 'returns index of two elements that their sum equals to target' do
      expect(@two_sum.two_sum([0, 0, 0, 0], 0)).to eq [0, 1]
      expect(@two_sum.two_sum([0, 3, 1, 2], 2)).to eq [0, 3]
      expect(@two_sum.two_sum([-1, -2, -3, 3], -4)).to eq [0, 2]
    end
  end

end
