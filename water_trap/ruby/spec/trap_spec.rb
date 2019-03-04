require './trap'
describe Trap do
  before do
    @trap = Trap.new
  end

  describe 'get_peaks' do
    it 'returns all peaks' do
      expect(@trap.get_peaks([4, 3, 2, 1])[:peak_values]).to eq [4]
      expect(@trap.get_peaks([4, 3, 2, 1])[:peak_indexes]).to eq [0]

      expect(@trap.get_peaks([1, 2, 3, 4])[:peak_values]).to eq [4]
      expect(@trap.get_peaks([1, 2, 3, 4])[:peak_indexes]).to eq [3]

      expect(@trap.get_peaks([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 6])[:peak_values]).to eq [1, 2, 3 , 6]
      expect(@trap.get_peaks([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 6])[:peak_indexes]).to eq [1, 3, 7, 11]

      expect(@trap.get_peaks([6, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 6])[:peak_values]).to eq [6, 2, 3, 6]
      expect(@trap.get_peaks([6, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 6])[:peak_indexes]).to eq [0, 3, 7, 11]

      expect(@trap.get_peaks([1, 7, 8])[:peak_values]).to eq [8]
      expect(@trap.get_peaks([1, 7, 8])[:peak_indexes]).to eq [2]

      expect(@trap.get_peaks([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1])[:peak_values]).to eq [1, 2, 3, 2]
      expect(@trap.get_peaks([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1])[:peak_indexes]).to eq [1, 3, 7, 10]

      expect(@trap.get_peaks([4, 2, 3])[:peak_values]).to eq [4, 3]
      expect(@trap.get_peaks([4, 2, 3])[:peak_indexes]).to eq [0, 2]

      expect(@trap.get_peaks([5, 5, 1, 7, 1, 1, 5, 2, 7, 6])[:peak_values]).to eq [5, 7, 5, 7]
      expect(@trap.get_peaks([5, 5, 1, 7, 1, 1, 5, 2, 7, 6])[:peak_indexes]).to eq [1, 3, 6, 8]

      expect(@trap.get_peaks([4, 9, 4, 5, 3, 2])[:peak_values]).to eq [9, 5]
      expect(@trap.get_peaks([4, 9, 4, 5, 3, 2])[:peak_indexes]).to eq [1, 3]

      expect(@trap.get_peaks([9, 6, 8, 8, 5, 6, 3])[:peak_values]).to eq [9, 8, 6]
      expect(@trap.get_peaks([9, 6, 8, 8, 5, 6, 3])[:peak_indexes]).to eq [0, 3, 5]

      expect(@trap.get_peaks([5, 3, 7, 7])[:peak_values]).to eq [5, 7]
      expect(@trap.get_peaks([5, 3, 7, 7])[:peak_indexes]).to eq [0, 2]

      expect(@trap.get_peaks([2, 1, 1, 2])[:peak_values]).to eq [2, 2]
      expect(@trap.get_peaks([2, 1, 1, 2])[:peak_indexes]).to eq [0, 3]

    end
  end

  describe 'vol' do
    it 'returns volumn from elements' do
      expect(@trap.vol([2, 1, 2])).to eq 1
      expect(@trap.vol([3, 1, 2])).to eq 1
      expect(@trap.vol([3, 1, 2, 3])).to eq 3
      expect(@trap.vol([3, 1, 2, 4])).to eq 3
      expect(@trap.vol([5, 3, 1, 2, 4])).to eq 6
      expect(@trap.vol([6, 3, 1, 2, 4])).to eq 6
      expect(@trap.vol([6, 3, 3, 1, 2, 4])).to eq 7
    end
  end

  describe 'trap' do
    it 'returns total trapped water volumne' do
      # expect(@trap.trap([0,1,0,2,1,0,1,3,2,1,2,6])).to eq 9
      # expect(@trap.trap([6,1,0,2,1,0,1,3,2,1,2,6])).to eq 47
      # expect(@trap.trap([1,7,8])).to eq 0
      # expect(@trap.trap([0,1,0,2,1,0,1,3,2,1,2,1])).to eq 6
      # expect(@trap.trap([4,2,3])).to eq 1
      # expect(@trap.trap([5,5,1,7,1,1,5,2,7,6])).to eq 23
      # expect(@trap.trap([4,9,4,5,3,2])).to eq 1
      # expect(@trap.trap([9,6,8,8,5,6,3])).to eq 3
      # expect(@trap.trap([0,3,4,4,6,6])).to eq 0
      # expect(@trap.trap([0])).to eq 0
      # expect(@trap.trap([0, 3])).to eq 0
      # expect(@trap.trap([1, 2, 3])).to eq 0
      # expect(@trap.trap([3, 2, 1])).to eq 0
      # expect(@trap.trap([5,3,7,7])).to eq 2
    end
  end

  describe 'next_peak' do
    it 'returns next peak index' do
      expect(@trap.next_peak(9, [1, 2, 3, 9])).to eq 3
      expect(@trap.next_peak(9, [1, 2, 3, 2])).to eq 2
      expect(@trap.next_peak(9, [6, 5, 4, 3])).to eq 0
      expect(@trap.next_peak(9, [6, 5, 8, 3])).to eq 2
    end
  end
end
