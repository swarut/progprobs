require './single_element_in_sorted_array'
describe SingleElementInSortedArray do
  before do
    @seisa = SingleElementInSortedArray.new
  end

  describe 'single_non_duplicate' do
    context 'input with 3 elements' do
      it 'returns single element' do
        expect(@seisa.single_non_duplicate([1, 1, 2])).to eq 2
        expect(@seisa.single_non_duplicate([1, 2, 2])).to eq 1
      end
    end
    context 'input with 5 elements' do
      it 'returns single element' do
        expect(@seisa.single_non_duplicate([1, 1, 2, 2, 3])).to eq 3
        expect(@seisa.single_non_duplicate([1, 2, 2, 3, 3])).to eq 1
        expect(@seisa.single_non_duplicate([1, 1, 3, 4, 4])).to eq 3
      end
    end
    context 'input with 7 elements' do
      it 'returns single element' do
        expect(@seisa.single_non_duplicate([1, 1, 2, 2, 3, 3, 4])).to eq 4
        expect(@seisa.single_non_duplicate([1, 2, 2, 3, 3, 4, 4])).to eq 1
        expect(@seisa.single_non_duplicate([1, 1, 2, 3, 3, 4, 4])).to eq 2
        expect(@seisa.single_non_duplicate([1, 1, 2, 2, 3, 4, 4])).to eq 3
      end
    end
  end
end
