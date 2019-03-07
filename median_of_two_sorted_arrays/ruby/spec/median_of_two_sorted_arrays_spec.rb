require './median_of_two_sorted_arrays'
describe MedianOfTwoSortedArray do
  before do
    @mtsa = MedianOfTwoSortedArray.new
  end

  describe 'find_median_sorted_arrays' do
    context 'two arrays are not overlapping' do
      context 'odd number of elements' do
        it 'returns correct length' do
          expect(@mtsa.find_median_sorted_arrays([1, 2], [3])).to eq 2
        end
      end
      context 'even number of elements' do
        it 'returns correct length' do
          expect(@mtsa.find_median_sorted_arrays([1, 2], [3, 4])).to eq 2.5
        end
      end
    end

  end

end
